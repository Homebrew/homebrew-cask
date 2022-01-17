cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.17.26"

  if Hardware::CPU.intel?
    sha256 "114f4af0b7c618a438e208705ed32052825dca2dd35cd09dd5ba45badd9d0576"
  else
    sha256 "e538bcf173de4d2598e56e19266dcc2f996a44bd39d85b2b2f79e81f0cb6125d"
  end

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac-#{arch}.dmg"
  name "electerm"
  desc "Terminal/ssh/serial port/sftp client"
  homepage "https://github.com/electerm/electerm/"

  auto_updates true

  app "electerm.app"

  zap trash: [
    "~/Library/Application Support/electerm",
    "~/Library/Logs/electerm",
    "~/Library/Preferences/org.electerm.electerm.plist",
    "~/Library/Saved Application State/org.electerm.electerm.savedState",
  ]
end
