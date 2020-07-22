cask 'blizz' do
  version '15.7.1'
  sha256 'f27034b581389e710855f96c1d4b1bd4714501226d61568e83b97d6fe1598df0'

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac'
  name 'Blizz'
  homepage 'https://www.blizz.com/'

  app 'Blizz.app'
end
