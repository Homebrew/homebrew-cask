cask 'breaktimer' do
  version '0.7.2'
  sha256 '0ce13c043622e9d5e60b531adf2cd3eb13d07a7227d9e7e804723ea47c0dd8b4'

  # github.com/tom-james-watson/breaktimer-app was verified as official when first introduced to the cask
  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg"
  appcast 'https://github.com/tom-james-watson/breaktimer-app/releases.atom'
  name 'BreakTimer'
  homepage 'https://breaktimer.app/'

  app 'BreakTimer.app'

  zap trash: [
               '~/Library/Application Support/BreakTimer',
               '~/Library/Preferences/com.tomjwatson.breaktimer.plist',
             ]
end
