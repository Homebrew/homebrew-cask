cask 'simpholders' do
  version '3.0.9,2275'
  sha256 'd7a59876543eb47d4678b3c0f6d1c0647373b4a7b8d4f52d02430f40ef524fe7'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  depends_on macos: '>= :mojave'

  app 'SimPholders.app'
end
