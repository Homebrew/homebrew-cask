cask :v1 => 'logitech-myharmony' do
  version '1.0'
  sha256 '537a11f2174dc748c27aff02bf01569b5bb2c93539b339c6fd61a7da07bb059f'

  url "http://app.myharmony.com/prod/mac/#{version}/MyHarmony-App.dmg"
  homepage 'https://setup.myharmony.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'MyHarmonySetup.pkg'

  uninstall :quit => 'org.logitech.MyHarmony',
            :pkgutil => 'MyHarmony.pkg'
end
