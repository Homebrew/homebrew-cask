cask "prepros" do
  version "7.3.20"
  sha256 "94e7b8f44648e48211bdabeb13399964c76c824e79277771e100103f22adc198"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac"
  name "Prepros"
  homepage "https://prepros.io/"

  app "Prepros.app"
end
