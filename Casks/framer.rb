cask 'framer' do
  version '9386'
  sha256 '485fbe07bfaf8f7675b2c50075f5b51ff9293f6125246db69735ad58feb30487'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '2daebfdeb9371eb119eff4ce446ef8d931bd5db5b1fca2ffaf20a04a1077e78b'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
