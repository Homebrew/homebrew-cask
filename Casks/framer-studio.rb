cask 'framer-studio' do
  version '49'
  sha256 '3325beca4aeb52b48eac89226795e46eb217e2fdae85e157612b3f0bd67a680a'

  # devmate.com is the official download host per the appcast feed
  url "https://dl.devmate.com/com.motif.framer/FramerStudio.zip"
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
