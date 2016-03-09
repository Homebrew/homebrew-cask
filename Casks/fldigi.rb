cask 'fldigi' do
  version '3.23.06'
  sha256 '559763738e6a57eb9d8665fe68a45abe612ee2264a89293c9ac8c84daa9dfeec'

  url "http://downloads.sourceforge.net/project/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
