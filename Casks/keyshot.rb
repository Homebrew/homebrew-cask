cask 'keyshot' do
  version '9.0.286'
  sha256 '618031aae2fbceea216c6b740266256ca6b52d4198f0d9a13e2c0003ba700d4b'

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
