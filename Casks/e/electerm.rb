cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "3.15.69"
  sha256 arm:   "d15ef14a81da933a0c073b1d36f4635acf4d7401f1a222b35bccb4cbce6d17de",
         intel: "b42d18a319d26966557e8c51516b0d39f14101fc122c36c1b098508bcaf6499a"

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
  depends_on macos: :monterey

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
