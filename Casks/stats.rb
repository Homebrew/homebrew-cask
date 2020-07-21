cask 'stats' do
  version '2.1.13'
  sha256 'c697c210342e00185fe927b51672d5cfbf8bf68de83dc43d1d1ced5894831adf'

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
