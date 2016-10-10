cask 'robofont' do
  version '1.6,1410152315'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  name 'RoboFont'
  homepage 'http://robofont.com'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
