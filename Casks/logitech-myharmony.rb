cask 'logitech-myharmony' do
  version '1.0'
  sha256 'de3c4d3a6d71dcccf45acf92fca496558bab95f70461c8466ba4ade3f5986740'

  url "https://app.myharmony.com/prod/mac/#{version}/MyHarmony-App.dmg"
  name 'MyHarmony'
  homepage 'https://setup.myharmony.com/'

  pkg 'MyHarmonySetup.pkg'

  uninstall quit:    'org.logitech.MyHarmony',
            pkgutil: 'MyHarmony.pkg'
end
