cask 'keyshot' do
  version '9.2.86'
  sha256 '2e1c3f0bfa0b330e3f67cbdd17689e23f1426fdba3a923079368bfc79522e71e'

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  depends_on macos: '>= :sierra'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
