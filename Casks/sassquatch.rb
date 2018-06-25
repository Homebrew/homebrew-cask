cask 'sassquatch' do
  version '1.5.0'
  sha256 '9f9c688e473cc8fdffbee38c5d8f876726620a42dacdd6c2996faadfab714612'

  # thoughtbot.github.io/sassquatch was verified as official when first introduced to the cask
  url "https://thoughtbot.github.io/sassquatch/download/v#{version}/Sassquatch.zip"
  appcast 'http://sassquatch.thoughtbot.com/feed.xml'
  name 'Sassquatch'
  homepage 'http://sassquatch.thoughtbot.com/'

  app 'Sassquatch/Sassquatch.app'
end
