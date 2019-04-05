cask 'lunar' do
  version '2.3.3'
  sha256 '4cd97246a8c53ba0f200388f8d2b82c2a465fba95d1fc0e30059203ec33474c2'

  # github.com/alin23/Lunar was verified as official when first introduced to the cask
  url "https://github.com/alin23/Lunar/releases/download/v#{version}/Lunar.dmg"
  appcast 'https://github.com/alin23/Lunar/releases.atom'
  name 'Lunar'
  homepage 'https://lunarapp.site/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Lunar.app'

  zap trash: [
               '~/Library/Application Support/Lunar',
               '~/Library/Application Support/site.lunarapp.Lunar',
               '~/Library/Preferences/site.lunarapp.Lunar.plist',
             ]
end
