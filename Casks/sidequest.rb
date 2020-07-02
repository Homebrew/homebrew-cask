cask 'sidequest' do
  version '0.10.10'
  sha256 '950021ce5ecd628dfdf182aa796d0567632bf715784b62cbd456a600dce2b5d0'

  # github.com/the-expanse/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
