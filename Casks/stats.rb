cask 'stats' do
  version '2.1.1'
  sha256 '59a168d4e60ab69ca08869a52902696c342bef188e3bcbe75cc7e54736c7759b'

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
