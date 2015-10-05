cask :v1 => 'ifunbox' do
  version '1.6'
  sha256 'e11fe3acd1b87547ccd0fbca1f776f8c48badb503d4ba63bc76a3232ef61ce51'

  url "http://dl.i-funbox.com/updates/ifunbox.mac/#{version}/ifunboxmac.dmg"
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml'
  name 'iFunBox'
  homepage 'http://www.i-funbox.com/'
  license :gratis

  app 'iFunBox.app'
end
