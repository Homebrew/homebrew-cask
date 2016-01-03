cask 'bettertouchtool' do
  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "http://bettertouchtool.net/btt#{version}.zip"
  else
    version '1.49'
    sha256 'a0ea79136322c634545c0b9da6001944fad5ec734b891fbc63c5485ba0cfd516'

    url "http://boastr.net/releases/btt#{version}.zip"
    appcast 'http://appcast.boastr.net',
            :sha256 => '1cb51646c9d3a28ec6f6904f04d83a3d73aface7ca055793439a2746d8f2a112'
  end

  name 'BetterTouchTool'
  homepage 'http://boastr.net/'
  license :gratis

  auto_updates true
  accessibility_access true

  app 'BetterTouchTool.app'

  uninstall :login_item => 'BetterTouchTool'

  zap :delete => [
                   '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                   '~/Library/Application Support/BetterTouchTool',
                 ]
end
