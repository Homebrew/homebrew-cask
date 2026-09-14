cask "macusb" do
  version "2.4"
  sha256 "fe3f25cb03c0b6437a148977e36a6e00fbbfcb1d2c868a041812e2b769fde1ae"

  url "https://github.com/Kruszoneq/macUSB/releases/download/v#{version}/macUSB.#{version}.dmg"
  name "macUSB"
  desc "Tool to create bootable USB installers"
  homepage "https://www.macusb.app/"

  depends_on macos: :sonoma

  app "macUSB.app"

  uninstall quit: "com.kruszoneq.macUSB"

  zap trash: [
    "~/Library/Application Support/macUSB",
    "~/Library/Caches/com.kruszoneq.macUSB",
    "~/Library/HTTPStorages/com.kruszoneq.macUSB*",
    "~/Library/Preferences/com.kruszoneq.macUSB.plist",
    "~/Library/Saved Application State/com.kruszoneq.macusb.savedState",
  ]
end
