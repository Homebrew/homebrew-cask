cask 'sidequest' do
  version '0.7.1'
  sha256 '6e9927ff89f5502711420383fa3c311cc40835aef2f22f330ce63f328f683822'

  # github.com/the-expanse/SideQuest was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
