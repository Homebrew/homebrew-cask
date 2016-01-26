cask 'ricoh-driver-aficio-sp-c240dn' do
  version '2.022.02'
  sha256 'ee97bb2775f62b69785996b475ed2b599872d618c4630f543a2603ef75f73c04'

  url 'http://support.ricoh.com/bb/pub_e/dr_ut_e/0001273/0001273748/V202/r69453Lf.dmg'
  name 'Ricoh Aficio SP C240DN driver'
  homepage 'http://support.ricoh.com/bb/html/dr_ut_e/ra/model/spc240/spc240en.htm'
  license :closed

  pkg 'Ricoh Aficio SP C240DN.pkg'

  uninstall pkgutil: 'printer.RICOH Aficio SP C240DN.com'
end
