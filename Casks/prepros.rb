cask :v1 => 'prepros' do
  version '5.8.0'
  sha256 '42d0d7744ec5667a7ab0bc96e2bdb53551ea294cd0f5be30e16a14a8b2c02c5c'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://prepros.io.s3.amazonaws.com/installers/Prepros-Mac-#{version}.zip"
  name 'Prepros'
  homepage 'https://prepros.io/'
  license :commercial

  app 'Prepros.app'
end
