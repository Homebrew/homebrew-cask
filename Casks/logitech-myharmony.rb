cask 'logitech-myharmony' do
  version '1.0.0.87'
  sha256 'e85bd9a1f65470df94c604b2671b60b47b0dbc07958b20796e93e7400e06cda2'

  url "https://app.myharmony.com/prod/mac/#{version.major_minor}/MyHarmony-App.dmg"
  name 'MyHarmony'
  homepage 'https://setup.myharmony.com/'

  pkg 'MyHarmonySetup.pkg'

  uninstall quit:    'org.logitech.MyHarmony',
            pkgutil: 'MyHarmony.pkg'
end
