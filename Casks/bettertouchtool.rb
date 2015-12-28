cask 'bettertouchtool' do

  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "http://bettertouchtool.net/btt#{version}.zip"
  else
    version '1.47d'
    sha256 '81b15b17a13018e48edb796f972732d379f22b9f0601300899fea3d77162bc5e'
    url "http://boastr.net/releases/btt#{version}.zip"
  end

  appcast 'http://appcast.boastr.net',
          :sha256 => 'd22e6a9b68ea9d83446ee27e24023fd734cb258b56f01162db52a0880bba6ef1'
  name 'BetterTouchTool'
  homepage 'http://boastr.net/'
  license :gratis

  app 'BetterTouchTool.app'

  accessibility_access true

  uninstall :login_item => 'BetterTouchTool'

  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
