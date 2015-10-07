cask :v1 => 'invisionsync' do
  version '1.7.19-672'
  sha256 '16bc77a5597a56f579cdbabdde0750d5a9456c1004cae5147f46f9687b98ae43'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-},'')}.zip"
  name 'InVision Sync'
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => '599e3c057def64d8e0bef737f32a78ea46922e4cc831b9663dcb83482ca00c0f'
  homepage 'http://invisionapp.com/'
  license :gratis

  app 'InVisionSync.app'
end
