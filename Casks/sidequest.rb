cask 'sidequest' do
  version '0.10.7'
  sha256 '676212d49ad915a03486583eb5ab6445a883dde27d757a47246d648b23b5e3be'

  # github.com/the-expanse/SideQuest/ was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
