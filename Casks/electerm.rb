cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.24"

  if Hardware::CPU.intel?
    sha256 "71012283cc671ee4c1153ae8358fd298c914ccc1463b98043fcdd13f09a4751f"
  else
    sha256 "7e15c57447306fe325f94bbdeee3c54b87de745ee0412ccfef90bba27850efd7"
  end

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
