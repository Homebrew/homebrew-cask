cask 'framerx' do
  version '24114,1537280058'
  sha256 :no_check

  # devmate.com/com.framer.x was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.framer.x/FramerX.zip'
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer X.app'
end
