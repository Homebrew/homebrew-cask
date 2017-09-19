cask 'bettertouchtool' do
  if MacOS.version <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.net was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
  elsif MacOS.version <= :lion
    version '1.922'
    sha256 '7a5a7cc9a9e5ae77f4ee7470f26453d327ccb55c7fac7f78f1bbe14ae9f0e70c'
    url "https://bettertouchtool.net/releases/btt#{version}_lion.zip"
  elsif MacOS.version <= :mavericks
    version '2.05'
    sha256 '41013cfeffee286a038363651db3dd315ff3a1e0cf07774d9ce852111be50a5a'
    url "https://bettertouchtool.net/releases/btt#{version}_final_10_9.zip"
  else
    version '2.304'
    sha256 '4ac90d55d4f58cea47a8ce3ef4e24c835db444ec35cf0a1cef3b17ed0c88eebc'
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
    appcast 'https://updates.bettertouchtool.net/appcast.xml',
            checkpoint: '1618577643f4f654a6d922b6888f3f02d1a46f2794aaca5a6fad58753db3ded0'
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
