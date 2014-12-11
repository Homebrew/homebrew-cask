cask :v1 => 'bettertouchtool' do

  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'
    url "http://bettertouchtool.net/bt#{version}.zip"
  else
    version :latest
    sha256 :no_check
    url 'http://bettertouchtool.net/BetterTouchTool.zip'
  end

  appcast 'http://appcast.boastr.net'
  homepage 'http://bettertouchtool.net/'
  license :commercial

  app 'BetterTouchTool.app'

  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
