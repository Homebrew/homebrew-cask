cask "rippling" do
  version :latest
  # sha256 "36e900f896ec932fa1782867341fd12bf46914f09dda4282a545ff9feef0adfe"
  sha256 :no_check

  url "https://hardware-cdn.rippling.com/device_release/electron-installer/3.6.2/macos/Rippling.dmg"
  name "rippling"
  desc "MDM for Rippling"
  homepage "https://www.rippling.com/"

  app "Rippling.app"
end
