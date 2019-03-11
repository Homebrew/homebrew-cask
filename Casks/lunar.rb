cask 'lunar' do
  version '2.2.0'
  sha256 'eec7d26743c27a304d99206380150404a0ab9f07b2c9e610c55dc20be2d6d350'

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
