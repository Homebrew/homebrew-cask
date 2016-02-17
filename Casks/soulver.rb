cask 'soulver' do
  version '2.5.5-5376'
  sha256 '5a1d803a70a3e638999006a523061c33ff53a3aacfd8cbacbcaf0726591d933f'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast 'http://www.acqualia.com/soulver/appcast/soulver2.xml',
          checkpoint: '764b9bc96d1794826f9e0639b894887265dc245783b33e0e199cc1b5467a0316'
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
