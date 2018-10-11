cask 'soulver' do
  version '2.6.8-5949'
  sha256 '216110f8118783194fb80f30e7a63584308f6569e3ff3214d13026231130ab7a'

  url "https://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "https://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml"
  name 'Soulver'
  homepage 'https://www.acqualia.com/soulver/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Soulver.app'

  zap trash: [
               '~/Library/Application Support/Soulver',
               '~/Library/Preferences/com.acqualia.soulver.plist',
               '~/Library/Autosave Information/Unsaved Soulver Document*',
             ]
end
