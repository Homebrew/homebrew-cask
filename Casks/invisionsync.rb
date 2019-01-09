cask 'invisionsync' do
  version '1.8.8,689'
  sha256 '67e27b0221d1f6c597e2d3541b9a2fc11f1d9dfa53fe357ef0de2e1e83b80c38'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.after_comma}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml'
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
