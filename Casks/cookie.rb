cask 'cookie' do
  version '5.7.7'
  sha256 'c290d51aaad6a7c8c699ea40a9d04d5926834ed8d639086d5f2470a74c76af93'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'a1215332dc1f250aa458c43dd232b80ba1a42047ccd4a5bb6389a07a41ae9108'
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
