cask 'simpholders' do
  version '3.0.6,2245'
  sha256 'bb69e1f185d17edbb24e3b1f1f2981e2344388c478308d75a2b1c129246cddd8'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  depends_on macos: '>= :mojave'

  app 'SimPholders.app'
end
