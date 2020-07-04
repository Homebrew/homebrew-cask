cask 'stats' do
  version '2.1.6'
  sha256 '59a9625e485272d8dd412c56f839ce0243c0e8c27c7a23c4e44b8182dd10a2e1'

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
