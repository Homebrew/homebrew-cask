cask :v1 => 'robomongo' do
  version '0.8.4'
  sha256 '52976b139e9221c2d1bd888ca2e87e14c134d324523973921123c3fe59821108'

  url "http://robomongo.org/files/mac/Robomongo-#{version}-x86_64.dmg"
  homepage 'http://robomongo.org'
  license :unknown

  app 'Robomongo.app'
end
