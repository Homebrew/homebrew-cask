cask :v1 => 'fldigi' do
  version '3.23.05'
  sha256 '2c4e815af1905173416467f3b32fb8779405632c9183b7e2accbcb3ff15841db'

  url "http://downloads.sourceforge.net/project/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  name 'fldigi'
  homepage 'http://sourceforge.net/projects/fldigi/files/fldigi/'
  license :gpl

  app "fldigi-#{version}.app"
  app 'flarq.app'
end
