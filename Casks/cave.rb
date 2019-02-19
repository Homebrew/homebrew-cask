cask 'cave' do
  version '18.1.1-5'
  sha256 '9a4da52bfd05e1c83db101cb3def1df3922a58aed21429b6ccdd669d10a37afc'

  url 'https://www.unidata.ucar.edu/downloads/awips2/awips-cave.dmg'
  appcast 'https://github.com/Unidata/awips2/releases.atom'
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
