cask "mysql-connector-python" do
  version "8.0.23"
  sha256 "640178dec7b72cae7caa6d07c4eb1ad7afe0c5e097dde56e1c6a2ef5351bf496"

  url "https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-macos10.15.dmg"
  name "MySQL Connector for Python"
  desc "Self-contained Python driver for communicating with MySQL servers"
  homepage "https://dev.mysql.com/downloads/connector/python/"

  # despite the "10.15" in the download name, this is compatible with 10.14 and above
  depends_on macos: ">= :mojave"

  pkg "mysql-connector-python-#{version}.pkg"

  uninstall pkgutil: "com.oracle.mysql.connector.python"
end
