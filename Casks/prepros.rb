cask :v1 => 'prepros' do
  version '4.0.1'
  sha256 '84510d1252274898b0fc4f95828b60e29a2c946a158bbf7d3188611c62dcd3b1'

  url "http://download.alphapixels.com/Prepros-#{version}.zip"
  name 'Prepros'
  homepage 'https://prepros.io/'
  license :commercial

  app 'Prepros.app'
end
