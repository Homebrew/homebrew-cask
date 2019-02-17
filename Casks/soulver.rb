cask 'soulver' do
  version '2.6.9-6055'
  sha256 'e8f96895e43d28177f458404bfc082ebc940c66ce6f425cdceeedab9389272bf'

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
