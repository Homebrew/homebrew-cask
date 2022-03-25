cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.19.5"

  if Hardware::CPU.intel?
    sha256 "766b3cdd5f5f9cc8392d7d41b6f73b21cf5d52348b21e0d647651567ebe52d72"
  else
    sha256 "8e23ef3556188810044558d6be0e9e57e436ea0174a701bf87b267261ffc5105"
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
