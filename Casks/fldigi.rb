cask :v1 => 'fldigi' do
  version '3.23.04'
  sha256 '162bff2fa2abd62230286eedfa627e4e3199a4c8c68a26094dd6075925026e69'

  url "http://downloads.sourceforge.net/project/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
