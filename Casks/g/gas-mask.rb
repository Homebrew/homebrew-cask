cask "gas-mask" do
  version "0.8.6"
  sha256 "9f75d0b11340d70832f87011c3d8ed97b9b18b3a56dec5f860d4040bb7404500"

  url "https://github.com/2ndalpha/gasmask/releases/download/#{version}/gas_mask_#{version}.zip"
  name "Gas Mask"
  desc "Hosts file editor/manager"
  homepage "https://github.com/2ndalpha/gasmask/"

  auto_updates true

  app "Gas Mask.app"

  uninstall quit: "ee.clockwise.gmask"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Gas Mask Help*",
    "~/Library/Caches/ee.clockwise.gmask",
    "~/Library/Gas Mask",
    "~/Library/Logs/Gas Mask.log",
    "~/Library/Preferences/ee.clockwise.gmask.plist",
  ]

  caveats do
    requires_rosetta
  end
end
