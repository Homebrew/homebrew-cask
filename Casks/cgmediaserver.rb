cask :v1 => 'cgmediaserver' do
  version '2.131'
  sha256 '81bc11dd89aa2291beebc348132288fbcb79db5ef035e012776f3696ec3cb3aa'

  url 'http://comicglass.net/help/files/mediaserver_mac_2131.zip'
  name 'CGMediaServer'
  homepage 'http://comicglass.net'
  license :closed 

  app 'CGMediaServer.app'
end
