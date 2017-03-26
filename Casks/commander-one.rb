cask 'commander-one' do
  version '1.7.2'
  sha256 'bc27ff154f586fa12b05ae4b28d8fb3ae3f13a1da291ea23830a173b41c032e5'

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          checkpoint: 'cdd0d91d5f64a0c66405f4b130aedb8b87918ff74e2639388a54782bb87c9a97'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  app 'Commander One.app'
end
