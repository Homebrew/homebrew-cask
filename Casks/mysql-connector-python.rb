cask "mysql-connector-python" do
  arch = Hardware::CPU.intel? ? "x86-64bit" : "arm64"

  version "8.0.29"

  if Hardware::CPU.intel?
    sha256 "028437530f54db39d91d3830e8966af5ab9d1540867e1ee14bd428ed7fc21b54"
  else
    sha256 "59c5e0a509cefa7ed8daa4aee228de8d38898d0a68a7469898e8aa1a2a425053"
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

  pkg "mysql-connector-python-#{version}-#{arch}.pkg"

  uninstall pkgutil: "com.oracle.mysql.connector.python"
end
