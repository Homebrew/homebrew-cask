cask "prepros" do
  version "7.3.24"
  sha256 "48b9075a0b52bdd3ff36ac6d57360212b76d6791b06c0bed464d2b87bf5745ea"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac"
  name "Prepros"
  homepage "https://prepros.io/"

  app "Prepros.app"
end
