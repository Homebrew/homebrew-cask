cask 'soulver' do
  version '2.6.2-5494'
  sha256 '2b3618ee8640a50dc186e3a6e274c9ba082c1aa2e4bb737b3e72264ea6e01b77'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: '54bc1d7049fba0c140dbc1690d38f8990d3a3fad7b7708ccb15fd5182b3b1232'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Soulver',
                '~/Library/Preferences/com.acqualia.soulver.plist',
                '~/Library/Autosave Information/Unsaved Soulver Document*',
              ]
end
