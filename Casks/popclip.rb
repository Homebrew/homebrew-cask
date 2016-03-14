cask 'popclip' do
  if MacOS.release <= :mountain_lion
    version '1.5.4'
    sha256 '8046452efc41988aa20ec0af31bc73aaceba5dd3d68bb4f56dc51959a2966349'
  elsif MacOS.release >= :mavericks
    version '1.5.5'
    sha256 'e028c21c93c6632c85b63c5ea9b365ae76dd375455baec804506f0091b93a4be'
  else
    # Unusual case: there is no fall-through.  The software will stop
    # working, or is dangerous to run, on the next OS X release.
  end

  # d20vhy8jiniubf.cloudfront.net was verified as official when first introduced to the cask
  url "https://d20vhy8jiniubf.cloudfront.net/downloads/PopClip-#{version}.zip"
  name 'Popclip'
  homepage 'https://pilotmoon.com/popclip/'
  license :commercial

  app 'Popclip.app'
end
