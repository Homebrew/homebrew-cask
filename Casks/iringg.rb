cask 'iringg' do
  version '1.0.38,1547826574'
  sha256 'eaafe9a2bf6f139944d55ea0ef13f3fefdbe565a47ec63a732d1722193f99ae2'

  # dl.devmate.com/com.softorino.iringg was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iringg/#{version.before_comma}/#{version.after_comma}/iRinggforMac-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iringg.xml'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
