cask 'quip' do
  version '7.12.2'
  sha256 'fd21b4bb73c0a3da0a149d1f1ff81eabb1c34103f62a58b826f36d40091e80f3'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
