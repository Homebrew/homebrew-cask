cask 'invisionsync' do
  version '1.7.23-676'
  sha256 'e99f7275d0b6e5c97b7de2d3c554e6058f11636c65d94ddf0765f9d62face21d'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-}, '')}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          checkpoint: '497c1f37a3bcc4ab7527e479069b9c8eddf8e7db036dc1dbae69668075554750'
  name 'InVision Sync'
  homepage 'http://invisionapp.com/'
  license :gratis

  app 'InVisionSync.app'
end
