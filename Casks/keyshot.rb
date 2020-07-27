cask "keyshot" do
  version "9.3.14"
  sha256 "30973fc28828b19187f9653566b135b39720c9e551ccef848f1f3efd13285ef9"

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name "KeyShot"
  homepage "https://www.keyshot.com/"

  depends_on macos: ">= :sierra"

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
