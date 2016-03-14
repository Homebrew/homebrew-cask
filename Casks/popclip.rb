cask :v1 => 'popclip' do
  version '1.5.3'
  sha256 :no_check

  url "https://d20vhy8jiniubf.cloudfront.net/downloads/PopClip-#{version}.zip"
  name 'Popclip'
  homepage 'https://pilotmoon.com/popclip/'
  license :commercial

  app 'Popclip.app'
end
