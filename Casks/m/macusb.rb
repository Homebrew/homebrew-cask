cask "macusb" do
  version "2.2"
  sha256 "ef77f63a05cf293cb58ced51c37a2fee83a7c2d772d6b05dfc75b38ee8f23a85"

  url "https://github.com/Kruszoneq/macUSB/releases/download/v#{version}/macUSB.#{version}.dmg",
      verified: "github.com/Kruszoneq/macUSB/"
  name "macUSB"
  desc "Tool to create bootable USB installers"
  homepage "https://kruszoneq.github.io/macUSB/"

  depends_on macos: :sonoma

  app "macUSB.app"

  zap trash: [
    "~/Library/Application Support/macUSB",
    "~/Library/Caches/com.kruszoneq.macusb",
    "~/Library/Preferences/com.kruszoneq.macusb.plist",
    "~/Library/Saved Application State/com.kruszoneq.macusb.savedState",
  ]
end
