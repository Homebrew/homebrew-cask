cask "jpki" do
  version "03-04_01-00"
  sha256 "7e75810b96b456784652370d1cb763fcb8fc70f7404cfba87f591b3d512eeeaf"

  url "https://www2.jpki.go.jp/client/download/101/JPKIMac_#{version}.dmg"
  name "JPKI"
  desc "Japanese Public Key Infrastructure software"
  homepage "https://www.jpki.go.jp/"

  depends_on macos: ">= :mojave"

  pkg "JPKIInstall.pkg"

  uninstall pkgutil: [
    "jp.go.jpki",
  ]
end
