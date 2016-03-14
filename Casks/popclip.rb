cask 'popclip' do
  version '1.5.5'
  sha256 'e028c21c93c6632c85b63c5ea9b365ae76dd375455baec804506f0091b93a4be'

  # d20vhy8jiniubf.cloudfront.net was verified as official when first introduced to the cask
  url "https://d20vhy8jiniubf.cloudfront.net/downloads/PopClip-#{version}.zip"
  name 'Popclip'
  homepage 'https://pilotmoon.com/popclip/'
  license :commercial

  app 'Popclip.app'
end
