cask 'lunar' do
  version '2.3.0'
  sha256 '86de6cf6485c5a0de56d5f99f8bfeba470e14a5267a5bb8535bfb01e6d4a5acd'

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
