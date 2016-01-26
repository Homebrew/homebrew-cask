cask 'hyperswitch' do
  version '0.2.555-dev'
  sha256 'ed3f8cb1706c9a43df17f1b020d11ea02c49dc3281efbefb72d2b8c593f1d200'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '208dcaff84a5601fb5336b5a89ec5e9f5d19fecee38bfce436f12028f4afdedc'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'
  license :gratis

  app 'HyperSwitch.app'
end
