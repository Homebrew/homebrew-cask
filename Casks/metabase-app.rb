cask 'metabase-app' do
  version '0.24.0.1'
  sha256 '7b6f9c4b73e23a95917715b4509aa380db358483daaaf419fe7f950eae0c232d'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'a2bd65fd60f68974974a56635394441f2ee8b28a20afd2cda9408a9b12f83be5'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
