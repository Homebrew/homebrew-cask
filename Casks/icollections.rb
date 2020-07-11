cask 'icollections' do
  version '6.5.1'
  sha256 '8683c01f66f7480679f10b14e2606012b815665b8713d4d34b5047918e4dd0be'

  url 'https://naarakstudio.com/download/iCollections.dmg'
  appcast 'https://naarakstudio.com/icollections/whats-new.pdf'
  name 'iCollections'
  homepage 'https://naarakstudio.com/icollections/'

  depends_on macos: '>= :sierra'

  app 'iCollections.app'
end
