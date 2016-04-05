cask 'commander-one' do
  version '1.5'
  sha256 '76b7b4e877bf2cfef92439741bf63f00d9aa151a9b99101c9e2db985c24d6abc'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: 'f70b5070ef747f116c85198f1cbbbdd04d031fd3f36e9774b1c55cc66d2fc1b7'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
