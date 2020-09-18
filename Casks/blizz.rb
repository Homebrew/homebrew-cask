cask "blizz" do
  version "15.10.2"
  sha256 "9814fdc61f13eb7e8a38747817370a9d78f769346b4288d0e1ba03972315d831"

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "Blizz"
  homepage "https://www.blizz.com/"

  app "Blizz.app"
end
