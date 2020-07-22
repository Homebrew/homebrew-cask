cask 'clashxr' do
  version '1.30.0'
  sha256 '1e12b79a90231764252557c30cd60a78158340acdab5f3082ff22fd42305a336'

  url "https://github.com/paradiseduo/ClashXR/releases/download/#{version}/ClashXR.dmg"
  appcast 'https://github.com/paradiseduo/ClashXR/releases.atom'
  name 'ClashXR'
  homepage 'https://github.com/paradiseduo/ClashXR'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ClashXR.app'

  zap trash: [
               '~/Library/Preferences/com.west2online.ClashXR.plist',
               '~/Library/Logs/ClashXR',
               '~/.config/clash/',
             ]
end
