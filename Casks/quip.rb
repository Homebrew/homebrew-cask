cask 'quip' do
  version '7.4.0'
  sha256 '8b08089547a8fe8dbe011006c81588d1c80bc41a0d71555b4efb051412fcf565'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
