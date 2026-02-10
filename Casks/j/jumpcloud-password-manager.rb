cask "jumpcloud-password-manager" do
  arch arm: "arm64/"

  version "3.3.41"
  sha256 arm:   "022ef12851245e9eab0796d28d2fbe64f7d78199ab962b221827777de62a654e",
         intel: "f0c0655b26a848c0837a56f6c62f318f992273f90893487ccdb53fc647562ad9"

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
