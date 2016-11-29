cask 'simpholders' do
  version '2.2'
  sha256 '0f12b0076f2bef08cd3129916a6fbe6f92bd7601a96bc787bfc0c5feda4b4d4a'

  url "https://simpholders.com/site/assets/files/1968/simpholders_#{version.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/updates/releases.xml',
          checkpoint: '5bf1c98cf80e24efdcb1fed5726780a58b9867d7b09e9f5c08fedcdd2f7897d8'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  app 'SimPholders.app'
end
