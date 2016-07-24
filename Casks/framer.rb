cask 'framer' do
  version '67'
  sha256 'cfe7aa65463973c52e8c420f751515a6d992ce883f70a8190531e6614231df23'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'df43584f2a28239c6f638620b6d942155ce2604f3d4208b27cd7c63605b205a7'
  name 'Framer'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer.app'
end
