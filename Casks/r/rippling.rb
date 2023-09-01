cask "rippling" do
  version :latest
  sha256 :no_check

  url "https://hardware-cdn.rippling.com/device_release/electron-installer/3.6.2/macos/Rippling.dmg"
  name "rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/"

  app "Rippling.app"
end
