cask "jumpcloud-password-manager" do
  version "3.0.149"
  sha256 "cff8776dc0396ebd32d2de53f0b364e028f2ffcd4a88645f6eb2d6701950cbcb"

  url "https://cdn.pwm.jumpcloud.com/DA/release/JumpCloud-Password-Manager-#{version}.dmg"
  name "JumpCloud Password Manager"
  desc "Password management tool that provides authentication, sharing and credentials"
  homepage "https://cdn.pwm.jumpcloud.com/web/download.html#desktop"

  livecheck do
    url "https://cdn.pwm.jumpcloud.com/DA/release/latest-mac.yml"
    strategy :electron_builder
  end

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
