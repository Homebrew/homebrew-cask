cask 'power-manager' do
  version '5.3.0'
  sha256 'b673091bda530114aba582d883e2f19ab0a8139bcbd47bb38b209b36f66033f7'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/'
  name 'Power Manager'
  homepage 'https://dssw.co.uk/powermanager/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Power Manager.app'
end
