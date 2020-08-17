cask "blizz" do
  version "15.7.2"
  sha256 "98dee30575ae86a775a30e33ad9960b71b9d7a6a3f192b93727b1b93f060c93a"

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "Blizz"
  homepage "https://www.blizz.com/"

  app "Blizz.app"
end
