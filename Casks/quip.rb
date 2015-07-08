cask :v1 => 'quip' do
  version '4.0.8'
  sha256 'cb578ee52c41f9de6f8c6260b95a10ecc8abbd4c57b70012539837d4c0cc1116'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
