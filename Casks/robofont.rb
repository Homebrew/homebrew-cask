cask :v1 => 'robofont' do
  version '1.6'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url 'http://robofont.com/downloads/RoboFont_1410152315.dmg'
  name 'RoboFont'
  homepage 'http://robofont.com'
  license :other    # see: http://doc.robofont.com/license-agreement/
  depends_on :macos => '>= 10.9'

  app 'RoboFont.app'
end
