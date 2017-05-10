cask 'simpholders' do
  version '2.2'
  sha256 '0f12b0076f2bef08cd3129916a6fbe6f92bd7601a96bc787bfc0c5feda4b4d4a'

  url "https://simpholders.com/site/assets/files/1968/simpholders_#{version.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/',
          checkpoint: 'ea4bde230320d53d2180dc75110878f45e47b434e2a6a7c77e1e16c057f4b9bd'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  app 'SimPholders.app'
end
