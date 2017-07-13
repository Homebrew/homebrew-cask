cask 'inkdrop' do
  version '3.7.1'
  sha256 'bb2d841f769e02a7b8ce911a2a6cf85939dd6a4b4a5bc45f8de21bbbe7f2375e'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom',
          checkpoint: '7b19281f2a3a7fd9f30882850bd60b4436eea3fd51ef9bbae36fb28f4c5516a2'
  name 'Inkdrop'
  homepage 'https://www.inkdrop.info/'

  app 'Inkdrop.app'

  zap delete: [
                '~/Library/Application Support/inkdrop',
                '~/Library/Saved Application State/info.pkpk.inkdrop.savedState',
                '~/Library/Caches/info.pkpk.inkdrop',
                '~/Library/Preferences/info.pkpk.inkdrop.plist',
                '~/Library/Preferences/info.pkpk.inkdrop.helper.plist',
              ]
end
