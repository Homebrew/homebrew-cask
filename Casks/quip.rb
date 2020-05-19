cask 'quip' do
  version '7.10.3'
  sha256 '1e7ce8846a5b061663894a2e34aa133ccec3aa7f889228fcce35073424796945'

  # quip-clients.com/ was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
