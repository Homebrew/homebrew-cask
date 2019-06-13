cask 'lunar' do
  version '2.8.2'
  sha256 '2c883b1127d32c6f7ae5232257573e3b298e611f0774733cb60486e836bb6abe'

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
