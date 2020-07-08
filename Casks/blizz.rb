cask 'blizz' do
  version '15.6.3'
  sha256 '1cb7297f5e898299551df5e59496c288d23f11ff10b072fb8ce934ec54bbcbc1'

  # dl.teamviewer.com/ was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac'
  name 'Blizz'
  homepage 'https://www.blizz.com/'

  app 'Blizz.app'
end
