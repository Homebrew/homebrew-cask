cask "clover-configurator" do
  version "5.17.4.0"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global"
  appcast "https://mackie100projects.altervista.org/download-clover-configurator/"
  name "Clover Configurator"
  desc "Clover EFI bootloader configuration helper"
  homepage "https://mackie100projects.altervista.org/clover-configurator/"

  auto_updates true

  app "Clover Configurator.app"

  zap trash: [
    "~/Library/Caches/org.altervista.mackie100projects.Clover-Configurator",
    "~/Library/Preferences/org.altervista.mackie100projects.Clover-Configurator.plist",
  ]
end
