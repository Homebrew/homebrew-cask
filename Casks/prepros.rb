cask "prepros" do
  version "7.3.26"
  sha256 "88e768112eacc410a9330eb11ff135cc52b3b53dceca1e8c8a2c9695362e89da"

  url "https://downloads.prepros.io/v#{version.major}/Prepros-#{version}.zip"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prepros.io/downloads/stable/mac"
  name "Prepros"
  homepage "https://prepros.io/"

  app "Prepros.app"
end
