cask 'clashxr' do
  version '1.20.3'
  sha256 '6bc1823d89563604b277c8d9e8568147b4c41fd86fecc8b5d467bc858c05b00f'

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
