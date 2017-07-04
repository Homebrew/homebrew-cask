cask 'inkdrop' do
  version '3.6.1'
  sha256 '245ff3e0f89d163fb39df99d3ecf8588e6a2ca69cafddfdd965976eed5b00f0c'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom',
          checkpoint: '349c8d8ab37f69d278717628e85c613ab6819b4d1045c68f0b6170e460535f8c'
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
