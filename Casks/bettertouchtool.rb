cask 'bettertouchtool' do
  if MacOS.release <= :snow_leopard
    version '0.939'
    sha256 'fad5e9d36259c379bdb33188cf15d179fd9ff73023035c98f5734e7e3e13bb75'

    # bettertouchtool.com is the official download host per the vendor homepage
    url "https://bettertouchtool.net/btt#{version}.zip"
  else
    version '1.5b'
    sha256 'f6408c0ba48588cd547bef4abdcfd723af5133af141f9f7a146d9ee7721f86e6'

    url "https://boastr.net/releases/btt#{version}.zip"
    appcast 'http://appcast.boastr.net',
            :sha256 => '52653a90c3c0940803325ac01aca538f7f8b431e4bca9dfa664489a16bc83d4f'
  end

  name 'BetterTouchTool'
  homepage 'https://boastr.net/'
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
