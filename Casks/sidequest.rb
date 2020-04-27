cask 'sidequest' do
  version '0.10.3'
  sha256 '8c15622687e491b02705edc96df9924114669890e7d8f781e1016dbcd9dc3ea7'

  # github.com/the-expanse/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
