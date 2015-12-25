cask 'commander-one' do
  version :latest
  sha256 :no_check

  url 'http://mac.eltima.com/download/commander.dmg'
  appcast 'http://www.eltima.com/download/commander-update/settings.xml',
          :sha256 => 'cb8be6ed485cc0c309ac7d3f0e08bb5562aeba2bbf8b7b64f6635554819ba2f9'
  name 'Commander One'
  homepage 'http://mac.eltima.com/file-manager.html'
  license :freemium

  app 'Commander One.app'
end
