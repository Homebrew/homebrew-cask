cask 'artisan' do
  version '2.1.1'
  sha256 'e736f3e803e14882ee687697d1913c3a501068bdc4ebee4b36bce400ba944b97'

  # github.com/artisan-roaster-scope/artisan was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast 'https://github.com/artisan-roaster-scope/artisan/releases.atom'
  name 'Artisan'
  homepage 'https://artisan-scope.org/'

  depends_on macos: '>= :high_sierra'

  app 'Artisan.app'
end
