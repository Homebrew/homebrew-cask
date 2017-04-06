cask 'inkdrop' do
  version '3.3.1'
  sha256 '1777dd314c8fb4b8d26c0e6d2c4c28a5951ed8f70d3c12fc6fb09a3be35c4d73'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom',
          checkpoint: 'f0cdd24e0f4afa3e7435b7b34ff53aee452fcbb42a392e1cd4fc8f1a15cb5698'
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
