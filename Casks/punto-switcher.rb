class PuntoSwitcher < Cask
  version '1.3.0'
  sha256 'd6ef0be09fdef79ea84dca013cee11393d07243db9c6240f7d31c42cf527426d'

  url 'http://download.cdn.yandex.net.cache-ams02.cdn.yandex.net/punto/mac/PuntoSwitcher.zip'
  homepage 'http://punto.yandex.ru'

  install 'PuntoSwitcher Installer.pkg'
  uninstall :quit => 'ru.yandex.desktop.PuntoSwitcher',
            :pkgutil => [ 'ru.yandex.puntoSwitcher*', 'ru.yandex.PuntoSwitcher*' ]
end
