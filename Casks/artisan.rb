cask 'artisan' do
  version '2.1.2'
  sha256 'e3f47dcbb8388af3283f1f2287ec8b081d63bf56a65550df8aafe9bc865b2f19'

  # github.com/artisan-roaster-scope/artisan was verified as official when first introduced to the cask
  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-mac-#{version}.dmg"
  appcast 'https://github.com/artisan-roaster-scope/artisan/releases.atom'
  name 'Artisan'
  homepage 'https://artisan-scope.org/'

  depends_on macos: '>= :high_sierra'

  app 'Artisan.app'
end
