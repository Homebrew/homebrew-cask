cask 'pocket-casts' do
  version '0.9.5'
  sha256 'af22a56f8392a5265fb026005a8a242c8024da835826a1d677885eef266a2024'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml',
          checkpoint: 'fe5c0164713ef586e7996fa33ff28555dd8e3c3ecb37a6acd1461b62393e4ff2'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
