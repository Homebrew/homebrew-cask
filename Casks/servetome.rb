cask 'servetome' do
  version '4.0.0144'
  sha256 '32e9ab67641a22051e4e879f8aeb6d723fa2e7ac5aee961c155bacb735d59be7'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  appcast 'https://www.zqueue.com/servetome/changehistory.html',
          checkpoint: 'e94a01c4410b8d1bfe8fce5feb9dc465e9fbbf1dc5510ac80fb0bdce886156ab'
  name 'ServeToMe'
  homepage 'https://www.zqueue.com/servetome/'

  app 'ServeToMe.app'
end
