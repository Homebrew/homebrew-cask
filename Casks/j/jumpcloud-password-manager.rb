cask "jumpcloud-password-manager" do
  arch arm: "arm64/"

  version "3.3.44"
  sha256 arm:   "f569a324fe92d6537f47d2a7ad334dfe6ea4f894b05bbc0a338112cebb1a6d88",
         intel: "beeb5b9c76cb2a7798db2544dea98ee313d79e607feed12d45c294bd6ffa5bb2"

  url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}JumpCloud-Password-Manager-#{version}.dmg"
  name "JumpCloud Password Manager"
  desc "Password management tool that provides authentication, sharing and credentials"
  homepage "https://cdn.pwm.jumpcloud.com/web/download.html#desktop"

  livecheck do
    url "https://cdn.pwm.jumpcloud.com/DA/release/#{arch}latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "JumpCloud Password Manager.app"

  zap trash: [
    "~/Library/Application Support/JumpCloud Password Manager",
    "~/Library/Preferences/com.jumpcloud.pwm.desktop.live.plist",
    "~/Library/Saved Application State/com.jumpcloud.pwm.desktop.live.savedState",
  ]
end
