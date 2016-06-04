cask 'bettertouchtool' do
  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.net was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/btt#{version}.zip"

    license :gratis
  else
    version '1.72'
    sha256 'ec7596688967cddca36cf905ac741ba193c87bd9c785530b94dd48820f1fc412'

    url 'https://download.bettertouchtool.net/btt1.72.zip'
    appcast 'http://appcast.boastr.net',
            checkpoint: 'c0db13ea9aec2e83f4a69ce215d652b457898a2fb3f9d71d1fb9f0085a86cf08'

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
