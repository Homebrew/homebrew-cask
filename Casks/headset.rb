cask 'headset' do
  version '1.7.0'
  sha256 'b51146d103ee81c4cd8c34249a91428700692fbbda935f1441e98a94635f0a0b'

  # github.com/headsetapp/headset-electron was verified as official when first introduced to the cask
  url "https://github.com/headsetapp/headset-electron/releases/download/v#{version}/Headset-#{version}.dmg"
  appcast 'https://github.com/headsetapp/headset-electron/releases.atom',
          checkpoint: 'a89abd54cdb1b553b3dbd87ee2e05e4fe7ec4116d12be79ffd258df473d1e401'
  name 'Headset'
  homepage 'http://headsetapp.co/'

  app 'Headset.app'

  zap trash: [
               '~/Library/Application Support/Headset',
               '~/Library/Preferences/co.headsetapp.app.helper.plist',
               '~/Library/Preferences/co.headsetapp.app.plist',
               '~/Library/Saved Application State/co.headsetapp.app.savedState',
             ]
end
