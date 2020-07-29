cask "opencore-configurator" do
  version :latest
  sha256 :no_check

  url "https://mackie100projects.altervista.org/apps/opencoreconf/download-new-build.php?version=last"
  name "OpenCore Configurator"
  homepage "https://mackie100projects.altervista.org/download-opencore-configurator/"

  app "OpenCore Configurator.app"
end
