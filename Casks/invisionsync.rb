cask 'invisionsync' do
  version '1.8.2-683'
  sha256 '2e40d68390b2c1d72e32a50792a89f8ef80f6b34b0bfeefb4e480802cce4d55e'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.sub(%r{^.*?-}, '')}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          checkpoint: '3c142a877b1aa92ed471d0f2c83c09a0eb4954605f7230360259fd6901711b66'
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
