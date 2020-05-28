cask 'sidequest' do
  version '0.10.8'
  sha256 '0b72df5eeed858f0c85d039a72c6a190dbc807f0a094aff8b1c5e4064573c4fa'

  # github.com/the-expanse/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
