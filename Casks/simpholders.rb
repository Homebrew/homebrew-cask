cask 'simpholders' do
  version '2.2'
  sha256 '0f12b0076f2bef08cd3129916a6fbe6f92bd7601a96bc787bfc0c5feda4b4d4a'

  url "https://simpholders.com/site/assets/files/1968/simpholders_#{version.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  app 'SimPholders.app'
end
