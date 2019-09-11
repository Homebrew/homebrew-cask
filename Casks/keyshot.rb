cask 'keyshot' do
  version '8.2.80'
  sha256 'c8df6bca2c0c89295ebcd109dd7b1a6b8ec5f58907b7ee6120a77b3b06d4bef9'

  url "https://download.keyshot.com/keyshot8/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*"
end
