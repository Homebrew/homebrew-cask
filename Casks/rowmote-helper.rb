cask :v1 => 'rowmote-helper' do
  version '3.9.4'
  sha256 'ea0b33ef5e5572892985b6abe07b214efe29483f36a1aa903339b75fb3c3028d'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'
  license :commercial

  app 'Rowmote Helper.app'
end
