cask 'cave' do
  version '18.1.1-1'
  sha256 'a269e7e0a83ee6f576bf647b7255a365817ef1d3a308b0a133f163c73c7c3cc1'

  url "https://www.unidata.ucar.edu/downloads/awips2/awips2-cave-#{version}.dmg"
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
