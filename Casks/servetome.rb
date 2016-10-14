cask 'servetome' do
  version '3.9.0.3101'
  sha256 '507987377436f80f985e3c46e1f5ffaecea933d8fbe36c23a5eb09f11c77567a'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  name 'ServeToMe'
  homepage 'https://zqueue.com/servetome/'

  app 'ServeToMe.app'
end
