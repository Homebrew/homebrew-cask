cask 'bettertouchtool' do
  if MacOS.version <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.net was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/btt#{version}.zip"

  else
    version '1.991'
    sha256 'e68965265afaaff5727d880b2a89b676cc17bdf9f33d21ba7a1c3b119d754817'

    url "https://boastr.net/releases/btt#{version}.zip"
    appcast 'http://appcast.boastr.net',
            checkpoint: 'a0456c391f5c6c6e89804b7ee0a39ad5686f7c89a6b479ee50965b9d1c8a0abf'

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
