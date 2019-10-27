cask 'keyshot' do
  version '8.2.80'
  sha256 '2216e460059232c0debc3ebb316b0f9203863ef68d135bcd1a83bbe43eb40c62'

  url "https://download.keyshot.com/keyshot8/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*"
end
