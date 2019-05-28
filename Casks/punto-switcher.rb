cask 'punto-switcher' do
  version :latest
  sha256 :no_check

  # cache-default04h.cdn.yandex.net/download.cdn.yandex.net/punto/mac was verified as official when first introduced to the cask
  url 'https://cache-default04h.cdn.yandex.net/download.cdn.yandex.net/punto/mac/PuntoSwitcher.zip'
  name 'Punto Switcher'
  homepage 'https://yandex.ru/soft/punto/'

  pkg 'PuntoSwitcher Installer.pkg'

  uninstall quit:      'ru.yandex.desktop.PuntoSwitcher',
            pkgutil:   [
                         'ru.yandex.puntoSwitcher*',
                         'ru.yandex.PuntoSwitcher*',
                         'ru.yandex.desktop.PuntoSwitcher.PS.pkg',
                         'ru.yandex.desktop.PuntoSwitcher.StartupHelper.pkg',
                         'ru.yandex.desktop.PuntoSwitcher.UninstallReporter.Job.pkg',
                         'ru.yandex.desktop.PuntoSwitcher.UninstallReporter.pkg',
                       ],
            launchctl: 'ru.yandex.desktop.PuntoSwitcher.UninstallReporter'
end
