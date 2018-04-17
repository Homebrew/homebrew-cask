cask 'soulver' do
  version '2.6.6-5881'
  sha256 'a95219084fba53c99a0aec44e283d6acfad157399b004eae7cd1597b12f935ae'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: 'a4e78d3e73ac5772ff213c2b2bfe700294afce50b1b745e79d7e448959d7669b'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  app 'Soulver.app'

  zap trash: [
               '~/Library/Application Support/Soulver',
               '~/Library/Preferences/com.acqualia.soulver.plist',
               '~/Library/Autosave Information/Unsaved Soulver Document*',
             ]
end
