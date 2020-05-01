cask 'sidequest' do
  version '0.10.6'
  sha256 '68b6cddbaca60656f4fe819738918d11fe0916f0c856acb3f836a7dbb1dc1855'

  # github.com/the-expanse/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
