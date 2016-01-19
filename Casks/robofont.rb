cask 'robofont' do
  version '1.6,1410152315'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://doc.robofont.com/version-history-index/',
          checkpoint: 'fde1f7be6ea0fa6c429f51adef472bbe586fe339c7465e4920f474f7489f7029'
  name 'RoboFont'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
