cask "macusb" do
  version "2.5"
  sha256 "aec02175ed1eb56d1966349c3fae663265f8bafbd2bfe328eb46a2b0bac6731c"

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
