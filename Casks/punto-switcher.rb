cask :v1 => 'punto-switcher' do
  version :latest
  sha256 :no_check

  url 'http://download.cdn.yandex.net.cache-ams02.cdn.yandex.net/punto/mac/PuntoSwitcher.zip'
  homepage 'http://punto.yandex.ru'
  license :unknown

  pkg 'PuntoSwitcher Installer.pkg'
  uninstall :quit => 'ru.yandex.desktop.PuntoSwitcher',
            :pkgutil => [ 'ru.yandex.puntoSwitcher*', 'ru.yandex.PuntoSwitcher*' ]
end
