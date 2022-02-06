cask "electerm" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.18.0"

  if Hardware::CPU.intel?
    sha256 "4e74f4c29232bb67fdb1bdabe7445e544e4cf200547615b687dd6c9b676eac48"
  else
    sha256 "ef6dec91f047f66fa75b79438cecd10667629aeeccd480b05b47529cf7263526"
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
