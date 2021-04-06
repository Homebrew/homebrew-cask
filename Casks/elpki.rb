cask "elpki" do
  version "1.2.0"
  sha256 :no_check

  url "https://www.eltax.lta.go.jp/eltax/junbi/syomei/files/ELPKISetup.dmg"
  name "ELPKI"
  desc "Safari plugin for using local tax system in Japan"
  homepage "https://www.eltax.lta.go.jp/eltax/junbi/syomei/"

  pkg "ELPKISetup.pkg"

  uninstall pkgutil: "jp.eltax.elpki"
end
