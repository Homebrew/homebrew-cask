cask 'breaktimer' do
  version '0.7.3'
  sha256 '07f2ce6e31304dabd0b35a0b4897d08d4ac462e814d3c4ffbd8bc765d8ccbaea'

  # github.com/tom-james-watson/breaktimer-app/ was verified as official when first introduced to the cask
  url "https://github.com/tom-james-watson/breaktimer-app/releases/download/v#{version}/BreakTimer.dmg"
  appcast 'https://github.com/tom-james-watson/breaktimer-app/releases.atom'
  name 'BreakTimer'
  homepage 'https://breaktimer.app/'

  auto_updates true

  app 'BreakTimer.app'
  binary "#{appdir}/BreakTimer.app/Contents/MacOS/BreakTimer", target: 'breaktimer'

  uninstall quit:      'com.tomjwatson.breaktimer',
            launchctl: 'com.tomjwatson.breaktimer.ShipIt'

  zap trash: [
               '~/Library/Application Support/BreakTimer',
               '~/Library/Caches/com.tomjwatson.breaktimer',
               '~/Library/Caches/com.tomjwatson.breaktimer.ShipIt',
               '~/Library/Logs/BreakTimer',
               '~/Library/Preferences/ByHost/com.tomjwatson.breaktimer.ShipIt.*.plist',
               '~/Library/Preferences/com.tomjwatson.breaktimer.plist',
               '~/Library/Saved Application State/com.tomjwatson.breaktimer.savedState',
             ]
end
