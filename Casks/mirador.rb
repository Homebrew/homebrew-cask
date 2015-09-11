cask :v1 => 'mirador' do
  version '1.3'
  sha256 'bc9e8a6f3de948a8674de3d35b9f9074be15421f24f4bcce5591899dc828a9c2'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mirador/mirador/releases/download/#{version}/mirador-macosx-#{version}.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom'
  name 'Mirador'
  homepage 'http://fathom.info/mirador/'
  license :gpl

  app 'Mirador.app'
end
