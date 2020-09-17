cask "blizz" do
  version "15.8.3"
  sha256 "a40316432d91b68e7b03672b86bd8bc7c914d98b5ec90bd27eab627f99fc0ef8"

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "Blizz"
  homepage "https://www.blizz.com/"

  app "Blizz.app"
end
