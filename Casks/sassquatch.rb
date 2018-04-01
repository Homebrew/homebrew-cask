cask 'sassquatch' do
  version '1.5.0'
  sha256 '9f9c688e473cc8fdffbee38c5d8f876726620a42dacdd6c2996faadfab714612'

  # thoughtbot.github.io/sassquatch was verified as official when first introduced to the cask
  url "https://thoughtbot.github.io/sassquatch/download/v#{version}/Sassquatch.zip"
  appcast 'http://sassquatch.thoughtbot.com/feed.xml',
          checkpoint: '52a77f36c7bb8a6a3d446a898a25c55742f0a481e0b72bcfed374f3c940a1087'
  name 'Sassquatch'
  homepage 'http://sassquatch.thoughtbot.com/'

  app 'Sassquatch/Sassquatch.app'
end
