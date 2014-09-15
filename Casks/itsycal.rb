class Itsycal < Cask
  version '0.8.0'
  sha256 '20c2f650c2ffe6b69d508d620ef620010a729b0c7e9766380ba737236aed5aa6'

  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  homepage 'http://www.mowglii.com/itsycal/'

  app "Itsycal #{version}/Itsycal.app"
end
