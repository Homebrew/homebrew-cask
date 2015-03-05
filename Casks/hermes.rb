cask :v1 => 'hermes' do
  version '1.2.5'
  sha256 '786e20040bdd6e943b646f74d7cc9a460b37444272c4a7af8d1f5ef77a7d2f2f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml',
          :sha256 => 'cc89f8c651e0335c91d52bb120f769ca4c418c13144155476c572ca5da21fb0e'
  homepage 'http://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
