cask 'inboxer' do
  version '1.0.4'
  sha256 '708aa5e6394b869efca1d99b3d03d5936a8599c1d4d864d157e13982d93b424e'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/inboxer-#{version}-mac.zip"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom',
          checkpoint: '3c36ee31f7aa39052adbbf6376891cccf14e302b05f8c973f75e47b0295bced3'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
