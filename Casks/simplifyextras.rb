cask 'simplifyextras' do
  version '1.0'
  sha256 '03c940561d265c02ccc7782cf9b2a0be592b233d074bb691775656642fed9455'

  url "http://mmth.us/simplify/prefpane/updates/#{version}.zip"
  name 'Simplify Extras'
  homepage 'http://mmth.us/simplify/extras/'
  license :gratis

  prefpane 'SimplifyExtras.prefPane'
end
