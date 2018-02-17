cask 'pocket-casts' do
  version '0.9.6'
  sha256 '3c8d9b38976a730173c7f8b3a52a62fa239116e903a1fe6202bc0f04947b24ab'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml',
          checkpoint: '6f522f26c59e1d5fb2576ee203123a4316386a438f2f353b90cb7a88c6eb6e86'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
