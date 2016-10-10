cask 'punto-switcher' do
  version :latest
  sha256 :no_check

  # cache-default03d.cdn.yandex.net was verified as official when first introduced to the cask
  url 'https://cache-default03d.cdn.yandex.net/download.cdn.yandex.net/punto/mac/PuntoSwitcher.zip'
  name 'Punto Switcher'
  homepage 'https://yandex.ru/soft/punto/'

  pkg 'PuntoSwitcher Installer.pkg'

  uninstall quit:    'ru.yandex.desktop.PuntoSwitcher',
            pkgutil: ['ru.yandex.puntoSwitcher*', 'ru.yandex.PuntoSwitcher*']
end
