cask 'prepros' do
  version '5.9.5'
  sha256 'f892d1ce768c7e71820b005f77a27648aa1d3025a43669b621c4a31d667716e8'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://prepros.io.s3.amazonaws.com/installers/Prepros-Mac-#{version}.zip"
  name 'Prepros'
  homepage 'https://prepros.io/'
  license :commercial

  app 'Prepros.app'
end
