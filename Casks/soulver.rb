cask 'soulver' do
  version '2.6.3-5783'
  sha256 '49b1a1eca2901f41ba70807cf8a6fd8981f31e1dc162107bcd807f3ac1d9c1b3'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: '04fcff1f8f755b06c7e0c498cbaef0b13fb5205fc7208dd0e47773b81caec36c'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  zap delete: [
                '~/Library/Application Support/Soulver',
                '~/Library/Preferences/com.acqualia.soulver.plist',
                '~/Library/Autosave Information/Unsaved Soulver Document*',
              ]
end
