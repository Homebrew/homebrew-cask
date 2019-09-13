cask 'iringg' do
  version '1.0.42,1568243164'
  sha256 '8d826d665b36285adfeec5877f6c0d8bf54fcbb847df62f0b4039ba834a49b43'

  # dl.devmate.com/com.softorino.iringg was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iringg/#{version.before_comma}/#{version.after_comma}/iRinggforMac-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iringg.xml'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
