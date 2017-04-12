cask 'inkdrop' do
  version '3.3.3'
  sha256 '00dec13ca9de1d5da83f55787fb9e46a783e836b812aaf81f7730cdc23d3def5'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom',
          checkpoint: 'd9d7afc3caf801ca0f74163d06ab9864642c8c6003ea49e450957973f94da395'
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
