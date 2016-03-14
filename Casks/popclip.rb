cask :v1 => 'popclip' do
  version '1.5.3'
  sha256 'e32bb0ecdd4b5a992d5b18d34dd929c3f237585c0bd52835bdd46fa907bdf089'

  url "https://d20vhy8jiniubf.cloudfront.net/downloads/PopClip-#{version}.zip"
  name 'Popclip'
  homepage 'https://pilotmoon.com/popclip/'
  license :commercial

  app 'Popclip.app'
end
