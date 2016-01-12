cask 'robofont' do
  version '1.6,1410152315'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://doc.robofont.com/version-history-index/',
          :sha256 => 'aeaf66c982d07b2a172a5c96f340d9afa9f740053e1968c3ca6fdbbb00a18615'
  name 'RoboFont'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  depends_on :macos => '>= :mavericks'

  app 'RoboFont.app'
end
