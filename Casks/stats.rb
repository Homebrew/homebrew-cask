cask 'stats' do
  version '2.1.12'
  sha256 '5cf1863cb7a609619edb7af939e7b98111e601263a7eae99a2f52866242de4a1'

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
