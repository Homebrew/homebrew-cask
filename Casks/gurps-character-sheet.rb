class GurpsCharacterSheet < Cask
  version '4.0.1'
  sha256 'ddff9b883b29be7dce0798cfedfe48c54d02a2adb16dc1e60cbcaa37d2ef902e'

  url "https://downloads.sourceforge.net/project/gcs-java/gcs-#{version}-mac.zip"
  homepage 'http://gurpscharactersheet.com'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end
