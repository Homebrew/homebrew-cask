cask "punto-switcher" do
  version :latest
  sha256 :no_check

  url "https://yandex.ru/soft/punto/download/?os=mac"
  name "Punto Switcher"
  homepage "https://yandex.ru/soft/punto/"

  pkg "PuntoSwitcher Installer.pkg"

  uninstall quit:      "ru.yandex.desktop.PuntoSwitcher",
            pkgutil:   [
              "ru.yandex.puntoSwitcher*",
              "ru.yandex.PuntoSwitcher*",
              "ru.yandex.desktop.PuntoSwitcher.PS.pkg",
              "ru.yandex.desktop.PuntoSwitcher.StartupHelper.pkg",
              "ru.yandex.desktop.PuntoSwitcher.UninstallReporter.Job.pkg",
              "ru.yandex.desktop.PuntoSwitcher.UninstallReporter.pkg",
            ],
            launchctl: "ru.yandex.desktop.PuntoSwitcher.UninstallReporter"
end
