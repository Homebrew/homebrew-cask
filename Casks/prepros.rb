cask "prepros" do
  version "7.3.22"
  sha256 "71c4c832e0ea38555691b59befcdf48f97eab0ecf2912d54aa436c14f2827e83"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac"
  name "Prepros"
  homepage "https://prepros.io/"

  app "Prepros.app"
end
