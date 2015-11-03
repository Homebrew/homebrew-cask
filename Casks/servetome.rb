cask :v1 => 'servetome' do
  version '4.0.0123'
  sha256 'afde55a5a5da1e1b02df4c06a3881140ba1ecdcc7d06d7cbe6a638d0f885388b'

  url "http://downloads.zqueue.com/ServeToMe-v#{version}.dmg"
  name 'ServeToMe'
  homepage 'http://zqueue.com/servetome/'
  license :gratis

  app 'ServeToMe.app'
end
