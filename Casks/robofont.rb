cask 'robofont' do
  version '1.6'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url 'http://robofont.com/downloads/RoboFont_1410152315.dmg'
  name 'RoboFont'
  appcast 'http://doc.robofont.com/appcast',
          :sha256 => 'c235649bb973653a99e043bab89681dcd0407976ae1cdc56237e963492bd8562'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  app 'RoboFont.app'

  depends_on :macos => '>= :mavericks'
end
