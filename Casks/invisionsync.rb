cask :v1 => 'invisionsync' do
  version :latest
  sha256 :no_check

  url 'https://www.invisionapp.com/app/InVisionSync.zip'
  name 'InVision Sync'
  appcast 'https://projects.invisionapp.com/native_app/mac/sparkle/appcast_v2.xml',
          :sha256 => 'd061f71101d85d806b19c532847e468b4a93222805dcd464ea25028961638a80'
  homepage 'http://invisionapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'InVisionSync.app'
end
