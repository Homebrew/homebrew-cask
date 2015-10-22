cask :v1 => 'quip' do
  version '4.2'
  sha256 'b1277eec2ffee0559f80d67840718f7c60e38ae29f9a1faf8a1ca1ffdc86151b'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
