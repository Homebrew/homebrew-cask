class LogitechMyharmony < Cask
  url 'http://app.myharmony.com/prod/mac/1.0/MyHarmony-App.dmg'
  homepage 'https://setup.myharmony.com/'
  version '1.0'
  sha256 '40969157ae8a7c45b7bd0711c9136da9e87b6ced71cbd0afa23817fc9fb569b5'
  install 'MyHarmonySetup.pkg'
  uninstall :quit => 'org.logitech.MyHarmony',
            :pkgutil => 'MyHarmony.pkg'
end
