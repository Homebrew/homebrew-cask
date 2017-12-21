cask 'cookie' do
  version '5.7.5'
  sha256 '1116aa7b6ab8c39e6e99b77c510c579930cd472a64da28ca80a74c2abe10afea'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '7f05c6231100cf3da70c5c7231f8cb9fcfe20a6cdc695320da4d0d4fccad0ef7'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  depends_on macos: '>= :el_capitan'

  app 'Cookie.app'

  zap trash: [
               '~/Library/Application Scripts/com.sweetpproductions.Cookie5',
               '~/Library/Containers/com.sweetpproductions.Cookie5',
               '~/Library/Preferences/com.sweetpproductions.Cookie5.plist',
             ]
end
