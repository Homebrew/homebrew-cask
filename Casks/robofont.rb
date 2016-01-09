cask 'robofont' do
  version '1.6,1410152315'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://doc.robofont.com/appcast/',
          :sha256 => 'ed39de07f36dbaf3d622c4d2172f36deea14ef3cf84214c6f2c9f4b0fb06e5ab'
  name 'RoboFont'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  depends_on :macos => '>= :mavericks'

  app 'RoboFont.app'
end
