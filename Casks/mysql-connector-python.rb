cask "mysql-connector-python" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.0.32"
  sha256 arm:   "a7bfa85d89cf62df8123c200e0390cc0c4927b02a323adb6d0a707e6d4dba23c",
         intel: "511206c0ef8a4eda208d77839fa418f4ecf89f0da24319fca6baf728e63faf53"

  url "https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-macos13-#{arch}.dmg"
  name "MySQL Connector for Python"
  desc "Self-contained Python driver for communicating with MySQL servers"
  homepage "https://dev.mysql.com/downloads/connector/python/"

  livecheck do
    url "https://dev.mysql.com/downloads/connector/python/?tpl=files&os=33"
    regex(/href=.*?mysql[._-]connector[._-]python[._-]v?(\d+(?:\.\d+)+)[._-]macos13[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  pkg "mysql-connector-python-#{version}-macos13-#{arch}.pkg"

  uninstall pkgutil: [
    "com.mysql.connector-python",
    "com.mysql.connector-python-py3.8",
    "com.mysql.connector-python-py3.9",
    "com.mysql.connector-python-py3.10",
    "com.mysql.connector-python-py3.11",
    "com.oracle.mysql.connector.python",
  ]
end
