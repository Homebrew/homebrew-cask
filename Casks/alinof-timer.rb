cask "alinof-timer" do
  version "5.2"
  sha256 :no_check

  url "https://www.alinofsoftware.ch/resources/AlinofTimer.pkg"
  name "Alinof Timer"
  desc "Timer app"
  homepage "https://www.alinofsoftware.ch/apps/products-timer/index.html"

  pkg "AlinofTimer.pkg"

  uninstall pkgutil: "com.alinofsoftware.alinoftimer"
end
