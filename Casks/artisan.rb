cask 'artisan' do
  version '2.4.0'
  sha256 '23668be43e2fc0b8a589501ba7ea1dea7e39daee8deb53df8abbe6324ead9a91'

  # github.com/artisan-roaster-scope/artisan/ was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast 'https://github.com/artisan-roaster-scope/artisan/releases.atom'
  name 'Artisan'
  homepage 'https://artisan-scope.org/'

  depends_on macos: '>= :high_sierra'

  app 'Artisan.app'
end
