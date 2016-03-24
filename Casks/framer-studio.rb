cask 'framer-studio' do
  version '55'
  sha256 '7e31647d87e1ab4a10b2ec585e1ab418e9e8dd75fb58e266364c31b17a06557b'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '177abfed88f3c2deb1166e449e6ae74dd0eacd1e984ad51f0ef0bf6583296f94'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
