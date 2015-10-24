cask :v1 => 'invisionsync' do
  version '1.7.19-672'
  sha256 '16bc77a5597a56f579cdbabdde0750d5a9456c1004cae5147f46f9687b98ae43'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-},'')}.zip"
  name 'InVision Sync'
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => '2bfb155bf4be63316438363df0a26207e8b37415af729b85d872c1945a7f5234'
  homepage 'http://invisionapp.com/'
  license :gratis

  app 'InVisionSync.app'
end
