cask 'metabase-app' do
  version '0.26.1.0'
  sha256 '9fcdf7f3153ca52b744e79e67a57bfef24a39c5d2292580607844b8445dc601d'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '7e151a74263694368506f7c2b72eb83b92d56e2dd0bd77909cefb09fd6ccdc34'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
