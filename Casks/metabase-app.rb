cask 'metabase-app' do
  version '0.22.0.0'
  sha256 '4f84ba4ce30abd11ba8f5d74295a1e1fd432fe2bae59d3d9429d0f4e4d930f6c'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '9fc5043facfe18b6e7f79a1f95b51a04e8891db8c6d5acbf28fa4adb0730362d'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
