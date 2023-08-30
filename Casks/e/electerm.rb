cask "electerm" do
  arch arm: "arm64", intel: "x64"

  version "1.29.5"
  sha256 arm:   "4d3bba3b53d02ed29613ad0dee975ff4ce2d4d4ab9a6c574192dd5fa3918bb93",
         intel: "41bf82a53530d6910cd06fb274c19d8bb53a48778915947ef2accc42efcabe2b"

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"
  binary "#{appdir}/electerm.app/Contents/MacOS/electerm"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
