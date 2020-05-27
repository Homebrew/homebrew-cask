cask 'quip' do
  version '7.11.1'
  sha256 '930aeaf6c826f538bd14ca481ea8e2f69b3a7c806491da4e7550d34e1d7d1bc7'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
