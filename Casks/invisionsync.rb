cask 'invisionsync' do
  version '1.9.1,692'
  sha256 'cb3c89b52a9c64c7996b4c427f73fe0805b6fa9b8dd5f213dc666391838f93ee'

  url "https://projects.invisionapp.com/native_app/mac/sparkle/#{version.after_comma}.zip"
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml'
  name 'InVision Sync'
  homepage 'https://www.invisionapp.com/'

  app 'InVisionSync.app'
end
