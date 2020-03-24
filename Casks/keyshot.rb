cask 'keyshot' do
  version '9.1.98'
  sha256 '34a66224c5902a416200ac4b63c1093cfed072a7af65b3c0db4cd69fc5dd2060'

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  depends_on macos: '>= :sierra'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
