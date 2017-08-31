cask 'soulver' do
  version '2.6.4-5791'
  sha256 'e30d4c58636f6d0d47693a859c1efb269b342f1aac2fa1a4526603dd74be2aa8'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: 'e98716acd4bf3d8955f26e0e83f453d7191e6b45c6d453ba03c65656e3df9f24'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  zap delete: [
                '~/Library/Application Support/Soulver',
                '~/Library/Preferences/com.acqualia.soulver.plist',
                '~/Library/Autosave Information/Unsaved Soulver Document*',
              ]
end
