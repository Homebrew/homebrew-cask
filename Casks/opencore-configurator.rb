cask "opencore-configurator" do
  version "2.29.0.0"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last"
  appcast "https://mackie100projects.altervista.org/download-opencore-configurator/"
  name "OpenCore Configurator"
  desc "OpenCore EFI bootloader configuration helper"
  homepage "https://mackie100projects.altervista.org/opencore-configurator/"

  auto_updates true

  app "OpenCore Configurator.app"

  zap trash: [
    "~/Library/Caches/org.altervista.mackie100projects.OpenCore-Configurator",
    "~/Library/Preferences/org.altervista.mackie100projects.OpenCore-Configurator.plist",
  ]
end
