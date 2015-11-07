cask :v1 => 'icultus' do
  version '1.0.1'
  sha256 '469d023832c129215b3863cb6202d11ce0ab77c1e3fc4ac4a256c4a9efdd7c81'

  url "https://github.com/djyde/iCultus/releases/download/v#{version}/iCultus-#{version}-darwin-x64.zip"
  appcast 'https://github.com/djyde/iCultus/releases.atom'
  name 'iCultus'
  homepage 'http://djyde.github.io/iCultus'
  license :mit

  app 'iCultus.app'
end
