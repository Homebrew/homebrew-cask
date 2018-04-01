cask 'mysql-connector-python' do
  version '2.1.7'
  sha256 '983b63a816fa73e63efe2a6e2da6fa7e52b71df6da1f1be95c8097fe3c646e46'

  url "https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-osx10.12.dmg"
  name 'MySQL Connector for Python'
  homepage 'https://dev.mysql.com/downloads/connector/python/'

  depends_on macos: '>= :sierra'

  pkg "mysql-connector-python-cext-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.connector.python'
end
