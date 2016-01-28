cask 'bettertouchtool' do
  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "https://bettertouchtool.net/btt#{version}.zip"

    license :gratis
  else
    version '1.52c'
    sha256 '41125093aa6ed5300ac301c045cf21c1078e54cad8f1a9a897fb156e25301a85'

    url "https://boastr.net/releases/btt#{version}.zip"
    appcast 'http://appcast.boastr.net',
            checkpoint: 'f3412ebb97eb7122d1469ce55106d527e1141739ad218cb5db480481a374a22f'

    license :commercial
  end

  name 'BetterTouchTool'
  homepage 'https://boastr.net/'

  auto_updates true
  accessibility_access true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap delete: [
                '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                '~/Library/Application Support/BetterTouchTool',
              ]
end
