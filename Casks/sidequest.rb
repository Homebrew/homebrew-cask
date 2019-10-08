cask 'sidequest' do
  version '0.7.2'
  sha256 'd4e7e60b41315f4ddec95694df53eea7feaaf95735d27b19b1350d2987d26afb'

  # github.com/the-expanse/SideQuest was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
