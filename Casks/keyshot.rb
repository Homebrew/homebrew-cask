cask 'keyshot' do
  version '9.0.289'
  sha256 'f871833af26e03d2ea4ffd5bae9d3ef9e1d3c8cd80137e0a896ac2bd2922605b'

  url "https://download.keyshot.com/keyshot#{version.major}/keyshot_mac64_#{version}.pkg"
  name 'KeyShot'
  homepage 'https://www.keyshot.com/'

  depends_on macos: '>= :sierra'

  pkg "keyshot_mac64_#{version}.pkg"

  uninstall pkgutil: "com.luxion.pkg.keyshot#{version.major}.*",
            delete:  "/Applications/KeyShot#{version.major}.app"
end
