cask 'apppolice' do
  version '1.1'
  sha256 'ed5a0830eb5a8cba63ab72d3c48dfd53a72d942d1a334d37b1e87c6b0fa087cf'

  url "https://github.com/fuyu/apppolice/releases/download/v#{version}/apppolice.dmg"
  appcast 'https://github.com/fuyu/apppolice/releases.atom',
          checkpoint: '79cb6a58e825b9b79b72f8fe4f35736c92e58bc2dd66304a3205a39a05ea3b6b'
  name 'AppPolice'
  homepage 'https://github.com/fuyu/apppolice'

  app 'AppPolice.app'

  uninstall login_item: 'AppPolice',
            quit:       'com.definemac.AppPolice'

  zap trash: '~/Library/Preferences/com.definemac.AppPolice.plist'
end
