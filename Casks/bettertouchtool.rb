cask :v1 => 'bettertouchtool' do

  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "http://bettertouchtool.net/btt#{version}.zip"
  else
    version '1.36'
    sha256 '128a54c2f48f37ae1ed6bfe9b84fb0af8c4f0bd56f93be067f6b179bb9acf8d8'
    url "http://boastr.net/releases/btt#{version}.zip"
  end

  appcast 'http://appcast.boastr.net'
  name 'BetterTouchTool'
  homepage 'http://boastr.net/'
  license :gratis

  app 'BetterTouchTool.app'

  accessibility_access true

  zap :delete => [
                  '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
                  '~/Library/Application Support/BetterTouchTool',
                 ]
end
