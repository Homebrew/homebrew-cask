cask 'simplifyextras' do
  version '1.0'
  sha256 '03c940561d265c02ccc7782cf9b2a0be592b233d074bb691775656642fed9455'

  url "https://mmth.us/simplify/prefpane/updates/#{version}.zip"
  name 'Simplify Extras'
  homepage 'https://mmth.us/simplify/extras/'

  prefpane 'SimplifyExtras.prefPane'
end
