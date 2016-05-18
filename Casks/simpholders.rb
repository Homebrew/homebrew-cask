cask 'simpholders' do
  version '2.2'
  sha256 '0f12b0076f2bef08cd3129916a6fbe6f92bd7601a96bc787bfc0c5feda4b4d4a'

  url "https://simpholders.com/downloads/SimPholders_#{version}.dmg"
  appcast 'https://simpholders.com/updates/releases.xml',
          checkpoint: '582a16dc0509a7294f58ac01668342159bcdcb3edb01a61a172d7fe8376a96c1'
  name 'SimPholders'
  homepage 'https://simpholders.com/'
  license :commercial

  app 'SimPholders.app'
end
