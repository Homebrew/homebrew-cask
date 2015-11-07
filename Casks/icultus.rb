cask :v1 => 'icultus' do
  version '1.0.1'
  sha256 '469d023832c129215b3863cb6202d11ce0ab77c1e3fc4ac4a256c4a9efdd7c81'

  url 'https://github.com/djyde/iCultus/releases/download/v1.0.1/iCultus-1.0.1-darwin-x64.zip'
  name 'iCultus'
  homepage 'http://djyde.github.io/iCultus'
  license :mit    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iCultus.app'
end
