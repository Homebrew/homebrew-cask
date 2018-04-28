cask 'museeks' do
  version '0.9.4'
  sha256 '18db8e10a07ba82344e7500c2f81f87ebfcdb7b2b497f0cae307caf07fda3546'

  # github.com/KeitIG/museeks was verified as official when first introduced to the cask
  url "https://github.com/KeitIG/museeks/releases/download/#{version}/museeks.dmg"
  appcast 'https://github.com/KeitIG/museeks/releases.atom',
          checkpoint: '2cd2819d1c682c26aff331565e8bbfdf11f7bd9873ec2a7b2d4953aacea72cde'
  name 'Museeks'
  homepage 'https://museeks.io/'

  app 'Museeks.app'

  zap trash: [
               '~/Library/Application Support/museeks',
               '~/Library/Saved Application State/com.electron.museeks.savedState',
             ]
end
