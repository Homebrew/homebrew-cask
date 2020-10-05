cask "blizz" do
  version "15.10.6"
  sha256 "6bceff792ef1e4af27b6be31a9c542f757dc0428fee92ae1b62f49740490f2b3"

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "Blizz"
  homepage "https://www.blizz.com/"

  app "Blizz.app"
end
