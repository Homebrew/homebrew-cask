cask 'inkdrop' do
  version '3.4.0'
  sha256 '8aa4f07ccd0972c9a745f87c4c339c0cc5f5d727c2fa3293f78b03cfbae5bcc9'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom',
          checkpoint: 'b5e6d9934c1db91f57d610c81e9d21e5f5ff91770ff467220d3df4c0eeceda62'
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
