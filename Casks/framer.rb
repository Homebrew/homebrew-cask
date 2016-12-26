cask 'framer' do
  version '79'
  sha256 'e4074d4afc0fc212f74b2f5368c06685806deada1ce19ec9e3665a9be73833ca'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'affc460095434746d0f1ddc17c4a69564639276c66e6f8a35ca02f661743fba7'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end
