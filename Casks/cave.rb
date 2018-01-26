cask 'cave' do
  version '17.1.1'
  sha256 '20c8b6a0d3f71bcdb8735af75898ccfa58dc5eeacfe424b5a3b7a804120f5cf6'

  url "https://www.unidata.ucar.edu/downloads/awips2/awips2-cave-#{version}.dmg"
  name 'AWIPS Cave'
  homepage 'https://www.unidata.ucar.edu/software/awips2/'

  depends_on cask: 'awips-python'

  app 'Cave.app'
end
