cask 'rowmote-helper' do
  version '4.1.8'
  sha256 'dce027ba01ef6984e68dfff5de41b954f670b0ff6e44d457d8bc2254d875e614'

  url "http://regularrateandrhythm.com/rowmote-pro/rh/rowmote-helper-#{version}.zip"
  appcast 'http://www.regularrateandrhythm.com/apps/rowmote-pro/rowmote-appcast.xml',
          checkpoint: '98ca3ca5b67bf12757bb4b6257f65257b023274e41587738e12e9e7ab8f10ac7'
  name 'Rowmote Helper'
  homepage 'http://regularrateandrhythm.com/apps/rowmote-pro/'

  auto_updates true

  app 'Rowmote Helper.app'
end
