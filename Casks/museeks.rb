cask 'museeks' do
  version '0.11.3'
  sha256 'ec057e1ca37be375a914165315a470db8216ae227ff32c34e6405b2ca88abdc6'

  # github.com/martpie/museeks was verified as official when first introduced to the cask
  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/martpie/museeks/releases.atom'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
