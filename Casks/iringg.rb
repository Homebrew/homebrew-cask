cask 'iringg' do
  version '1.0.41,1567697104'
  sha256 'a0aedb2bb0e874e2d19be10bc76b078cad1ebb78d575ce16154570a85f8b6039'

  # dl.devmate.com/com.softorino.iringg was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iringg/#{version.before_comma}/#{version.after_comma}/iRinggforMac-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iringg.xml'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
