cask 'apppolice' do
  version '1.1'
  sha256 'ed5a0830eb5a8cba63ab72d3c48dfd53a72d942d1a334d37b1e87c6b0fa087cf'

  url "https://github.com/fuyu/apppolice/releases/download/v#{version}/apppolice.dmg"
  appcast 'https://github.com/fuyu/apppolice/releases.atom',
          checkpoint: 'aea2e42c4edb5da3fbb801ba34de8aec4462e298d0afa1eb4faeb34d342aea82'
  name 'AppPolice'
  homepage 'https://github.com/fuyu/apppolice'

  app 'AppPolice.app'

  uninstall login_item: 'AppPolice',
            quit:       'com.definemac.AppPolice'

  zap delete: '~/Library/Preferences/com.definemac.AppPolice.plist'
end
