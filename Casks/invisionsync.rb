cask :v1 => 'invisionsync' do
  version '1.7.20-673'
  sha256 '219d670309a6f21c91b634f9189f0226d8d1fe1c0ccfc472ef90d6839f8ff734'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-},'')}.zip"
  name 'InVision Sync'
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => '599e3c057def64d8e0bef737f32a78ea46922e4cc831b9663dcb83482ca00c0f'
  homepage 'http://invisionapp.com/'
  license :gratis

  app 'InVisionSync.app'
end
