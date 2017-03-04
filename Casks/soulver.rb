cask 'soulver' do
  version '2.6.1-5482'
  sha256 'e3a1977c01e734e432eba4fff88ff2a57690414a25fae7bfc9659062640b234d'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: '4d8d650d946053334b843c8db5656a943c187a9f40e4bece82f3c9558e4af683'
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
