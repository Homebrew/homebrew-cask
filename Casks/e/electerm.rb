cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.100.30"
  sha256 arm:   "07600c9888c5ee36f5af2f2b1dd86f7a709bf32363cf67bac069cd7bbb7986c0",
         intel: "739232ac4166208e4d5bdc1070ad9886e683d56b89014233b71f831f3dcd0d6c"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg",
      verified: "github.com/electerm/electerm/"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://electerm.html5beta.com/"

  livecheck do
    url "https://electerm.html5beta.com/data/electerm-github-release.json"
    strategy :json do |json|
      json.dig("release", "tag_name")&.sub("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
