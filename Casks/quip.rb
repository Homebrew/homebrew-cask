cask :v1 => 'quip' do
  version '4.1.3'
  sha256 '9f126a8a5619946fccd35057d9671bc338bc40b1c37669e2aca927742b4c469b'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
