cask "mysql-connector-python" do
  arch = Hardware::CPU.intel? ? "x86-64bit" : "arm64"

  version "8.0.30"

  if Hardware::CPU.intel?
    sha256 "673b43fbe5cf3ea4b8997bcb29a4e79390607434e81682e9b15466b502a43aa8"
  else
    sha256 "bbe251a4a9bea7a73ca1aa0112d8de0ac44f69fe45e3453a3a5c4b02e4661d0b"
  end

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
