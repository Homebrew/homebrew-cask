cask 'robofont' do
  version '1.6,1410152315'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://doc.robofont.com/version-history-index/',
          :checkpoint => '20fd666897887814a7101134a37ff02b64fd0efb93fac1f64d4876b4c91517b6'
  name 'RoboFont'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  depends_on :macos => '>= :mavericks'

  app 'RoboFont.app'
end
