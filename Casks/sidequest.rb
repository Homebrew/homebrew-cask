cask 'sidequest' do
  version '0.8.5'
  sha256 '2bcddcab4e52123494f9b58811b445218a5875544cc1444b4f0eb05b8d4ad824'

  # github.com/the-expanse/SideQuest was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
