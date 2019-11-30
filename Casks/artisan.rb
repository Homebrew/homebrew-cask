cask 'artisan' do
  version '2.1.0'
  sha256 '7d557caaebaa948e1584c423691b969e7aaae61f7f9581ef0e711b18573e7b30'

  # github.com/artisan-roaster-scope/artisan was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast 'https://github.com/artisan-roaster-scope/artisan/releases.atom'
  name 'Artisan'
  homepage 'https://artisan-scope.org/'

  depends_on macos: '>= :high_sierra'

  app 'Artisan.app'
end
