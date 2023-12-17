cask "mysql-connector-python" do
  arch arm: "arm64", intel: "x86-64bit"

  version "8.0.33"
  sha256 arm:   "2f1740c09feae8a2eea023ebeb1b1575dfd5c00e0fe6a537d28aa91e521b6142",
         intel: "eab771f47c4fc7aa678fe0fed590454365c43850786366a0763a5235fb1054af"

  url "https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-#{version}-macos13-#{arch}.dmg"
  name "MySQL Connector for Python"
  desc "Self-contained Python driver for communicating with MySQL servers"
  homepage "https://dev.mysql.com/downloads/connector/python/"

  deprecate! date: "2023-12-17", because: :discontinued

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

  # No zap stanza required
end
