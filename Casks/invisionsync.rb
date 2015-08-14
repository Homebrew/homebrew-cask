cask :v1 => 'invisionsync' do
  version '1.7.16-668'
  sha256 'a6131c61b050b78350e3b608bcffedc2f047e78bff68010cb30531675593cb6c'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-},'')}.zip"
  name 'InVision Sync'
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => '13265e17eb103d1f566047dd2817e4dea53122291e07ac33d6331459261b3134'
  homepage 'http://invisionapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'InVisionSync.app'
end
