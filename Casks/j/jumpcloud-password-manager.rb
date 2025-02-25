cask "jumpcloud-password-manager" do
  version "3.0.149"
  sha256 :no_check

  url "https://cdn.pwm.jumpcloud.com/DA/release/JumpCloud-Password-Manager-latest.dmg"
  name "jumpcloud-password-manager"
  desc "Password management tool that provides authentication, sharing and credentials"
  homepage "https://cdn.pwm.jumpcloud.com/web/download.html#desktop"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "JumpCloud Password Manager.app"

  zap trash: [
    "~/Library/Application Support/JumpCloud Password Manager",
    "~/Library/Preferences/com.jumpcloud.pwm.desktop.live.plist",
    "~/Library/Saved Application State/com.jumpcloud.pwm.desktop.live.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
