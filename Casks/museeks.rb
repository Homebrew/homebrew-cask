cask 'museeks' do
  version '0.9.2'
  sha256 'bbeb956637e04038c0505ef206692a7c8ec50cfd971c5d1d15ec3f9daec78796'

  # github.com/KeitIG/museeks was verified as official when first introduced to the cask
  url "https://github.com/KeitIG/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/KeitIG/museeks/releases.atom',
          checkpoint: '1cfbaea6021d538f891dddf4763c414bb36679c71621f9940c967edc35e412cc'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
