cask 'simpholders' do
  version '3.0.7,2269'
  sha256 '30a146ab6999a58a44a1e3d910caf9a7afe68c2ce1ac5a4cf8af21ddd0909dcb'

  url "https://simpholders.com/site/assets/files/#{version.after_comma}/simpholders_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://simpholders.com/releases/'
  name 'SimPholders'
  homepage 'https://simpholders.com/'

  depends_on macos: '>= :mojave'

  app 'SimPholders.app'
end
