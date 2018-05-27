cask 'soulver' do
  version '2.6.8-5949'
  sha256 '216110f8118783194fb80f30e7a63584308f6569e3ff3214d13026231130ab7a'

  url "http://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
  appcast "http://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml",
          checkpoint: 'e71aca0d3723d84e68412f7ec392114803da43eae400f7b72a97010c45240c1e'
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
