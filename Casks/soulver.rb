cask 'soulver' do
  version '3.4.5-122'
  sha256 '6a185ba736330ef8133a774ab7344989b23b6d8ea7a2a2a66038440acf203950'

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast 'https://soulver.app/mac/sparkle/appcast.xml'
  name 'Soulver'
  homepage 'https://soulver.app/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app "Soulver #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Soulver 3',
               '~/Library/Application Support/app.soulver.mac',
               '~/Library/Preferences/app.soulver.mac.plist',
             ]
end
