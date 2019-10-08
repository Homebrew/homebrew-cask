cask 'quip' do
  version '5.5.42'
  sha256 'e7af8762033a0faa09f39061341e2aa4caaef457eb398eb25278cefd13a1563e'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
