cask 'artisan' do
  version '2.0.0'
  sha256 '465815bfc0d52a887ef6b4bbda986186d9b239f7127151abf70dde36a335d510'
  # github.com/artisan-roaster-scope/artisan was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast "https://github.com/artisan-roaster-scope/artisan/releases.atom"
  name 'Artisan'
  homepage 'https://artisan-scope.org/'

  app 'Artisan.app'
end
