cask 'iringg' do
  version '1.0.38,1547826574'
  sha256 'b0f83393fb0067e996f5b2d791fbdffb230fe8a2fb340772a671e54746a6ed4d'

  # dl.devmate.com/com.softorino.iringg was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iringg/#{version.before_comma}/#{version.after_comma}/iRinggforMac-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iringg.xml'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
