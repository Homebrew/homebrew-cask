cask 'cave' do
  version '17.1.1'
  sha256 'a1039ee4c4a71f344071e0e8ea03718680376855ccd638e3bf9ca0130313ac75'

  url "https://www.unidata.ucar.edu/downloads/awips2/awips2-cave-#{version}.dmg"
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
