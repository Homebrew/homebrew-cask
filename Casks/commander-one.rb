cask 'commander-one' do
  version '1.5.2'
  sha256 '9994e89a5821714741b421051d05cc5cc760439fe8ea66381338f82c842ecb73'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: '618d262bf47c8b972b7d8878549b6ee978e30d474b1546676946c35aa688d60e'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
