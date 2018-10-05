cask 'cave' do
  version '18.1.1-1'
  sha256 'b4b93878165809f83cb76f243cab429aa78aaeb687d69785c1939cf405064c20'

  url "https://www.unidata.ucar.edu/downloads/awips2/awips2-cave-#{version}.dmg"
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
