cask 'stats' do
  version '2.0.6'
  sha256 '1c4319930e3c49dbdc8a9148098aaa7e714e329083c704e350a4ef641887ad26'

  url "https://github.com/exelban/stats/releases/download/v#{version}/Stats.dmg"
  appcast 'https://github.com/exelban/stats/releases.atom'
  name 'Stats'
  homepage 'https://github.com/exelban/stats'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Stats.app'

  uninstall quit: 'eu.exelban.Stats'

  zap trash: [
               '~/Library/Preferences/eu.exelban.Stats.plist',
               '~/Library/Application Scripts/eu.exelban.Stats.LaunchAtLogin',
               '~/Library/Containers/eu.exelban.Stats.LaunchAtLogin',
               '~/Library/Cookies/eu.exelban.Stats.binarycookies',
               '~/Library/Caches/eu.exelban.Stats',
             ]
end
