cask '115browser' do
  version '8.6.1.12'
  sha256 'cd882959237004eb5c7ad5b88424ec2d16a09a783dec59b16399c1c92f643feb'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'http://anxia.com/m/115brv84019dmg',
          checkpoint: '5c607ad71eda1b808c35d9747cfe3255977b6808a2faf5178318f2ef6371109e'
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  depends_on macos: '>= :mountain_lion'

  app '115Browser.app'

  zap trash: [
               '~/Library/Application Support/115Browser',
               '~/Library/Caches/115Browser',
               '~/Library/Caches/org.115Browser.115Browser',
               '~/Library/Preferences/org.115Browser.115Browser.plist',
               '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
             ]
end
