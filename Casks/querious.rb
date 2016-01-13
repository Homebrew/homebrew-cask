cask 'querious' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/querious/downloads/Querious.dmg'
  appcast 'https://store.araelium.com/updates/querious',
          :sha256 => 'd80fc2dda3e645bb622abd2bf72e02dce2e7266859e2cc11c54812f30a5f0c54'
  name 'Querious'
  homepage 'http://www.araelium.com/querious/'
  license :commercial

  app 'Querious.app'
end
