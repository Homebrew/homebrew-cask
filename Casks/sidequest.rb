cask 'sidequest' do
  version '0.4.2'
  sha256 '23c74f3db8728595afaaea4b76f48f60db1d2387ea92c84485b2175cc02388a3'

  # github.com/the-expanse/SideQuest was verified as official when first introduced to the cask
  url "https://github.com/the-expanse/SideQuest/releases/download/v#{version}/SideQuest-#{version}.dmg"
  appcast 'https://github.com/the-expanse/SideQuest/releases.atom'
  name 'SideQuest'
  homepage 'https://sidequestvr.com/'

  depends_on macos: '>= :sierra'

  app 'SideQuest.app'

  zap trash: '~/Library/Application Support/SideQuest'
end
