cask "mysql-connector-python" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.0.31"
  sha256 arm:   "fbbe9b1d790dd77646c4ac522fe713fe9b783b3e69352d8cde86fe19e9c4f708",
         intel: "0f7d3cd56fc1a682cdc505f05ed47f1f88df7bdfec75385c1365cbc3b3603541"

  url "https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-macos12-#{arch}.dmg"
  name "MySQL Connector for Python"
  desc "Self-contained Python driver for communicating with MySQL servers"
  homepage "https://dev.mysql.com/downloads/connector/python/"

  livecheck do
    url "https://dev.mysql.com/downloads/connector/python/?tpl=files&os=33"
    regex(/href=.*?mysql[._-]connector[._-]python[._-]v?(\d+(?:\.\d+)+)[._-]macos12[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  pkg "mysql-connector-python-#{version}-macos12-#{arch}.pkg"

  uninstall pkgutil: [
    "com.mysql.connector-python",
    "com.mysql.connector-python-py3.8",
    "com.mysql.connector-python-py3.9",
    "com.oracle.mysql.connector.python",
  ]
end
