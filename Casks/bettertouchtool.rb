cask :v1 => 'bettertouchtool' do

  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "http://bettertouchtool.net/btt#{version}.zip"
  else
    version '1.16'
    sha256 '2e52ee5eeccdb5cc4fd48af9624c04be0ea16694e86a4cad2929d6d583f09765'
    url "http://boastr.net/releases/btt#{version}.zip"
  end

  appcast 'http://appcast.boastr.net'
  name 'BetterTouchTool'
  homepage 'http://boastr.net/'
  license :gratis

  app 'BetterTouchTool.app'

  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
