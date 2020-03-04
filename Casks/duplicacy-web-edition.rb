cask 'duplicacy-web-edition' do
  version '1.2.1'
  sha256 '167bdcaac51de13c5b28f22deafb43b271fa760ed55075997005159397ed5c79'

  # acrosync.com/duplicacy-web was verified as official when first introduced to the cask
  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg"
  appcast 'https://duplicacy.com/download.html'
  name 'Duplicacy Web Edition'
  homepage 'https://duplicacy.com/'

  app 'Duplicacy Web Edition.app'

  zap trash: '~/.duplicacy-web'
end
