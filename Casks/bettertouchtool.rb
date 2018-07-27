cask 'bettertouchtool' do
  if MacOS.version <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
  elsif MacOS.version <= :lion
    version '1.922'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    sha256 '7a5a7cc9a9e5ae77f4ee7470f26453d327ccb55c7fac7f78f1bbe14ae9f0e70c'
    url "https://bettertouchtool.net/releases/btt#{version}_lion.zip"
  elsif MacOS.version <= :mavericks
    version '2.05'
    sha256 '41013cfeffee286a038363651db3dd315ff3a1e0cf07774d9ce852111be50a5a'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}_final_10_9.zip"
  else
    version '2.536'
    sha256 '218c1e1b0d2acdda02e997496afd11ed99cd37e54aa233ee47a99ef0568f4572'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
    appcast 'https://updates.bettertouchtool.net/bettertouchtool_release_notes.html'
  end

  name 'BetterTouchTool'
  homepage 'https://www.boastr.net/'

  auto_updates true
  accessibility_access true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
