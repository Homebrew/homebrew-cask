cask 'quicksilver' do
  version '1.6.0'
  sha256 '7844afa8af6c4724ae736db82e5359407b845e4d77827d538295c2ce4f91879f'

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  auto_updates true

  app 'Quicksilver.app'

  zap trash: [
               '~/Library/Preferences/com.blacktree.Quicksilver.plist',
               '~/Library/Application Support/Quicksilver',
             ]
end
