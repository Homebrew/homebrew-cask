cask 'quip' do
  version '5.4.88'
  sha256 '9a6cddf188b5a907f85d53259755288027c3a83dcc93590a6cb56de1cf721efd'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
