cask 'iringg' do
  version '1.0.43,1576268168'
  sha256 'de278f40b045fa76a31c4c1f48b0ce3cae3793f0da65f748a06e189879eb5918'

  # dl.devmate.com/com.softorino.iringg was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.iringg/#{version.before_comma}/#{version.after_comma}/iRinggforMac-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.iringg.xml'
  name 'iRingg'
  homepage 'https://softorino.com/iringg/'

  auto_updates true

  app 'iRingg.app'

  zap trash: '~/Library/Application Support/iRingg'
end
