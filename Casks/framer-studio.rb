cask 'framer-studio' do
  version '53'
  sha256 'b427b0af3f2aa7105a977161dd69c666c10c907127fff423163fa961f18889e6'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'a7e20cc759aad54b2c8e73a22ea0ccb04dba2d3ff6b6ed8ed73ac334a447aca4'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
