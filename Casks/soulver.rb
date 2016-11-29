cask 'soulver' do
  version '2.6.0-5456'
  sha256 '1ba18b3be8835e916a19a840fa7136d0ba9dd4d339c72b05a65ee1862a5c3d51'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: '1e355d3d72aeafce49717901df0986926ed78d0f4201416964d91b72200c2f33'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Soulver',
                '~/Library/Preferences/com.acqualia.soulver.plist',
                '~/Library/Autosave Information/Unsaved Soulver Document.soulver',
                # TODO: glob/expand support
                # '~/Library/Autosave Information/Unsaved Soulver Document 2.soulver',
              ]
end
