cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.91.16"
  sha256 arm:   "bbaa7c8ebc3de4211014850a76d5bd84c72d90589c44b0555c765168a1d1c2e7",
         intel: "5d61da3fbbcfa6932c1aadbe5f88a23cb12fbf7967f1abf4bc9673f21428d7ba"

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
