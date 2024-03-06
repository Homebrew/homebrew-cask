cask "keyshot" do
  version "11.3.3.2"
  sha256 "563744f2ecb505fad77c9622eedb7fdf5bc6795c93519a553758a708d7cd87ff"

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name "KeyShot"
  desc "Real-time 3D rendering"
  homepage "https://www.keyshot.com/"

  # Download links are walled (no longer publicly available)
  disable! date: "2024-02-28", because: :no_longer_meets_criteria

  depends_on macos: ">= :sierra"

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
