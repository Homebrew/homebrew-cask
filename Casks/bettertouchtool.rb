cask 'bettertouchtool' do
  if MacOS.version <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.net was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"

  else
    version '2.04'
    sha256 '1c8b41ad3c0b98dfb244d667dd4e67be2a1c5f581effed1a0521f6c9631096ee'

    url "https://bettertouchtool.net/releases/btt#{version}.zip"
    appcast 'https://updates.bettertouchtool.net/appcast.xml',
            checkpoint: '847220e812cac2f426aafa4a97016b7be03644c9f4713e0424002db5721469b7'
  end

  name 'BetterTouchTool'
  homepage 'https://www.boastr.net/'

  auto_updates true
  accessibility_access true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap delete: [
                '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                '~/Library/Application Support/BetterTouchTool',
              ]
end
