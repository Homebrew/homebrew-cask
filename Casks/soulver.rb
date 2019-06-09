cask 'soulver' do
  if MacOS.version <= :mojave
    version '2.6.9-6055'
    sha256 'e8f96895e43d28177f458404bfc082ebc940c66ce6f425cdceeedab9389272bf'

    url "https://www.acqualia.com/files/sparkle/soulver_#{version}.zip"
    appcast "https://www.acqualia.com/soulver/appcast/soulver#{version.major}.xml"
    homepage 'https://www.acqualia.com/soulver/'
  else
    version '3.0.0-19'
    sha256 'ecaca54c6ec8fb148301a194237e043b439646eeeb48a87d4a17c869c8c9c8b2'
  end

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast 'https://soulver.app/mac/sparkle/appcast.xml'
  name 'Soulver'
  homepage 'https://soulver.app/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "Soulver #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Soulver',
               '~/Library/Preferences/com.acqualia.soulver.plist',
               '~/Library/Autosave Information/Unsaved Soulver Document*',
             ]
end
