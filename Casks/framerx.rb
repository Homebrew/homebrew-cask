cask 'framerx' do
  version '24114,1537280058'
  sha256 :no_check

  url 'https://dl.devmate.com/com.framer.x/FramerX.zip'
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
