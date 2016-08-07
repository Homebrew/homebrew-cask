cask 'soulver' do
  version '2.5.6-5393'
  sha256 '395082a2e887167dd88b090ad6e7da420f403e8c43ca7b96ba58f1b0abbcfa42'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml',
          checkpoint: '1718879bf8570e84eaf368e6c0cec501dcf13ab75c9b9bcade7d3f1f79511237'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'
  license :commercial

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
