cask "alinof-timer" do
  version "4.0.0"
  sha256 :no_check

  url "https://www.alinofsoftware.ch/resources/AlinofTimer.pkg"
  name "Alinof Timer"
  desc "Timer app"
  homepage "https://www.alinofsoftware.ch/apps/products-timer/index.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "AlinofTimer.pkg"

  uninstall pkgutil: "com.alinofsoftware.alinoftimer"
end
