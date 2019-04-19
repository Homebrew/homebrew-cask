cask 'cave' do
  version '18.1.1.7'
  sha256 '91ba9c2421fcdc849a5a694ff483c1c466404514174f1b61a45339a7252eba87'

  url 'https://www.unidata.ucar.edu/downloads/awips2/awips-cave.dmg'
  appcast 'https://github.com/Unidata/awips2/releases.atom'
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
