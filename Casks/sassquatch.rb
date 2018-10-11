cask 'sassquatch' do
  version '1.5.0'
  sha256 '9f9c688e473cc8fdffbee38c5d8f876726620a42dacdd6c2996faadfab714612'

  url "https://sassquatch.thoughtbot.com/download/v#{version}/Sassquatch.zip"
  appcast 'https://sassquatch.thoughtbot.com/feed.xml'
  name 'Sassquatch'
  homepage 'https://sassquatch.thoughtbot.com/'

  app 'Sassquatch/Sassquatch.app'
end
