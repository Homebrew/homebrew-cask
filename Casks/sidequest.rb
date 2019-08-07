cask 'sidequest' do
  version '0.6.4'
  sha256 '35e4aac6322e0c7cf13657f903ce9197482fe42ec8d75ab3a23528118ee3972f'

  # github.com/the-expanse/SideQuest was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
