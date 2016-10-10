cask 'mysql-connector-python' do
  version '2.1.3'
  sha256 '49655f970317383fc188ff48c777ade58be40d05d33be44c1c5e676546e41ba4'

  if MacOS.version <= :mountain_lion
    url "http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-osx10.8.dmg"
  else
    url "http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-osx10.9.dmg"
  end

  name 'MySQL Connector for Python'
  homepage 'https://dev.mysql.com/downloads/utilities/'

  pkg "mysql-connector-python-cext-#{version}.pkg"

  uninstall pkgutil: 'com.oracle.mysql.connector.python'
end
