cask 'soulver' do
  version '3.3.2-96'
  sha256 '997388cb58b95587e73c89e7c1771f413f5164a9633cb3396f9bb1f8b66e0bac'

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
