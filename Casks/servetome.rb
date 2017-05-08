cask 'servetome' do
  version '4.0.0144'
  sha256 '32e9ab67641a22051e4e879f8aeb6d723fa2e7ac5aee961c155bacb735d59be7'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'https://www.zqueue.com/servetome/changehistory.html',
          checkpoint: 'feed3e29ad59f08e1add12b87f065fc7f6daa2977790dd0fc744e2caf4a4f566'
  name 'ServeToMe'
  homepage 'https://www.zqueue.com/servetome/'

  app 'ServeToMe.app'
end
