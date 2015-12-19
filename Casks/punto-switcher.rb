cask 'punto-switcher' do
  version :latest
  sha256 :no_check

  # yandex.net is the official download host per the vendor homepage
  url 'http://cache-default02d.cdn.yandex.net/download.cdn.yandex.net/punto/mac/PuntoSwitcher.zip'
  name 'Punto Switcher'
  homepage 'http://punto.yandex.ru'
  license :gratis

  pkg 'PuntoSwitcher Installer.pkg'

  uninstall :quit => 'ru.yandex.desktop.PuntoSwitcher',
            :pkgutil => [ 'ru.yandex.puntoSwitcher*', 'ru.yandex.PuntoSwitcher*' ]
end
