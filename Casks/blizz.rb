cask "blizz" do
  version "15.8.2"
  sha256 "be329654749c12c30cfd2a53ea89e16e53ef011c240bda68ee9acc59c228b671"

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "Blizz"
  homepage "https://www.blizz.com/"

  app "Blizz.app"
end
