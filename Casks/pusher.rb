cask 'pusher' do
  version '0.7.4'
  sha256 '58a6f828797da6cfefbd983a91e37dc8b1b4ad8bac263211b92d18afb84d7b94'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast 'https://github.com/noodlewerk/NWPusher/releases.atom',
          checkpoint: 'ca8d66b3aad9dcb79055592be038322b39e96b018e8e44b902fcd1fb5c4aea5d'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'

  app 'Pusher.app'
end
