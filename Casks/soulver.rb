cask 'soulver' do
  version '2.6.7-5936'
  sha256 '81df634e82418904b539bdc30d28e30486f3e5d1132d296c4cedc4a025f8c562'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: 'a7872dca261ed69c5f485c3a0dc752f4619c9a4d41e1076a77810fbf12e01a23'
  name 'Soulver'
  homepage 'http://www.acqualia.com/soulver/'

  depends_on macos: '>= :yosemite'

  app 'Soulver.app'

  zap trash: [
               '~/Library/Application Support/Soulver',
               '~/Library/Preferences/com.acqualia.soulver.plist',
               '~/Library/Autosave Information/Unsaved Soulver Document*',
             ]
end
