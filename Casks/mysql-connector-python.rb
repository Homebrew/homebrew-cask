cask 'mysql-connector-python' do
  version '2.1.5'
  sha256 'd95dec32546fd7c3ca96bd3f65da374d2e9861ab3c145e2dddb80ac40acc1331'

  url "http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-macos10.12.dmg"
  name 'MySQL Connector for Python'
  homepage 'https://dev.mysql.com/downloads/connector/python/'

  depends_on macos: '>= :yosemite'

  pkg "mysql-connector-python-cext-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.connector.python'
end
