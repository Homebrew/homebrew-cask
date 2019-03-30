cask 'cave' do
  version '18.1.1-6'
  sha256 'ef04149537e3eac6abaf3b1c1ffaca532aec292f880ea3d6fe6d577b8e9c0367'

  url 'https://www.unidata.ucar.edu/downloads/awips2/awips-cave.dmg'
  appcast 'https://github.com/Unidata/awips2/releases.atom'
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
