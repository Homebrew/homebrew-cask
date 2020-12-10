cask "opencore-configurator" do
  version "2.18.0.2"
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last"
  appcast "https://mackie100projects.altervista.org/download-opencore-configurator/"
  name "OpenCore Configurator"
  homepage "https://mackie100projects.altervista.org/opencore-configurator/"

  app "OpenCore Configurator.app"
end
