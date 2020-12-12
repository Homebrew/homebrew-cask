cask "clover-configurator" do
  version "5.17.3.0"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/cloverconf/download-new-build.php?version=global"
  appcast "https://mackie100projects.altervista.org/download-clover-configurator/"
  name "Clover Configurator"
  homepage "https://mackie100projects.altervista.org/clover-configurator/"

  app "Clover Configurator.app"
end
