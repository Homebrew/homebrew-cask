cask :v1 => 'orange' do
  version '2.7.8-4456761'
  sha256 'afaa9f22c6950ba653f6122dbd00b3f542887a4985b695f8d9cbb53698999133'

  url "http://orange.biolab.si/download/Orange-#{version}.dmg"
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
