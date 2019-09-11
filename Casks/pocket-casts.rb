cask 'pocket-casts' do
  version '1.2.1'
  sha256 '8b541e6eeefab3cf3240b6e35aa1dbae7395263bb5c3a20ce6fcff3e7ac41b19'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  depends_on macos: '>= :sierra'

  app 'Pocket Casts.app'
end
