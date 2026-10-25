cask "macusb" do
  version "2.6"
  sha256 "2e48bc5d316d859aa74429f471501726e7dccb4ffcb4e3ab1e36d6fa7defe254"

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
