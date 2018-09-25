cask 'mysql-community-server' do
  version '8.0.12'
  sha256 '7b461b64f7eaee045941d37d5db8a0a8466828fb142d04abc9b9b2350d6176aa'

  url "https://dev.mysql.com/get/Downloads/MySQL-#{version.major_minor}/mysql-#{version}-macos10.13-x86_64.dmg"
  appcast 'https://dev.mysql.com/doc/relnotes/mysql/8.0/en/'
  name 'MySQL Community Server'
  homepage 'https://www.mysql.com/'

  depends_on macos: '>= :sierra'

  pkg "mysql-#{version}-macos10.13-x86_64.pkg"

  uninstall pkgutil: 'com.mysql.mysql'

  zap pkgutil: [
                 'com.mysql.launchd',
                 'com.mysql.prefpane',
               ]
end
