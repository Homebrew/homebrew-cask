cask 'soulver' do
  version '3.3.1-93'
  sha256 'fadb149ab514f7d3ff1586140fcf17b4722b40102ccdaccfb1a5d49c135380ec'

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
