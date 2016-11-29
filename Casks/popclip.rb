cask 'popclip' do
  if MacOS.version <= :mountain_lion
    version '1.5.4'
    sha256 '8046452efc41988aa20ec0af31bc73aaceba5dd3d68bb4f56dc51959a2966349'
  else
    version '1.5.6'
    sha256 '5cc5fed0281325b8121e3a26c181e5cbb34db75ba3cef351d6484a32844a611c'
  end

  # d20vhy8jiniubf.cloudfront.net was verified as official when first introduced to the cask
  url "https://d20vhy8jiniubf.cloudfront.net/downloads/PopClip-#{version}.zip"
  name 'Popclip'
  homepage 'https://pilotmoon.com/popclip/'

  app 'Popclip.app'
end
