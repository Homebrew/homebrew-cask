cask 'soulver' do
  version '2.6.5-5864'
  sha256 '46f615f08f0037d617e2a998059be3fe29923f7ec3986258984b00ed1768ab65'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: '13b888bc45c4b3d2df76112300ce7201dae445e75c4dcef266f87c6ec6fa8254'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  zap delete: [
                '~/Library/Application Support/Soulver',
                '~/Library/Preferences/com.acqualia.soulver.plist',
                '~/Library/Autosave Information/Unsaved Soulver Document*',
              ]
end
