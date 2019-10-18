cask 'simpholders' do
  version '3.0.8,2273'
  sha256 '792e1f056a193b116b914d737b797ea21c47c53227c9c874f0fead2408263bf1'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  depends_on macos: '>= :mojave'

  app 'SimPholders.app'
end
