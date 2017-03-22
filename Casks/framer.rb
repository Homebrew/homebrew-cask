cask 'framer' do
  version '86'
  sha256 '04200c0b3ee160355c0b055c0b7edb8111d4e5c29afa05937dce9568de665d86'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '44e01972dd1d2fa63eb158e8d3dd6810b5091f966b41556a54d7748c86210942'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
