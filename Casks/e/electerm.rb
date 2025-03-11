cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.72.26"
  sha256 arm:   "769d1dd23ca3835e29ff22ae330569dcf98d9513bd8b72db1cffdefc8ac487a7",
         intel: "66673069fcb046d4e8daedf4391375336c038ef5adc5d4ca8ae048dedfca163d"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

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
