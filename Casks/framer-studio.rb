cask 'framer-studio' do
  version '58'
  sha256 'd6eda94e3815764844e5447b773a7d2f43e7f3ded966f0a091fa5e9680c8bcb2'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'f70404104dfdf7fd4646d9bfd8db4d596081bb5c8faa5e05bf11af6577450e11'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
