cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  on_sierra :or_older do
    version "8.0.12,10.13-x86-64bit"
    sha256 "7e4f01f4f5c9f4567b2eafa6ffefe502096be89e4cdfb9952e6d379be8fffe7f"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "8.0.18,10.14-x86-64bit"
    sha256 "23676e36670ae4753583344e012066782d09c7df3ed11d2611d604c85d91693d"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "8.0.23,10.15-x86-64bit"
    sha256 "75ee22c5cf7fd4dda05c87ea5bfcbd46e76a589c2132de4f875cd8605514315b"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "8.0.27,11-x86-64bit"
    sha256 "3214e9d35b4950cd326b0bef3b9c582cf01957fbf64cebce4b7bb85b7e38add9"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "8.0.29,12"
    sha256 arm:   "7095eaa8c67a8952101e0e6173645ac4377b1c06df5e8f87ceddea418d79b5a6",
           intel: "971e88d93f477437b7b6507408c0c31183f36af7922b7c2f6570ec314779ad20"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "8.0.34,13"
    sha256 arm:   "c67890eff6829afbc234260b3f54d34cb65b699e53ae59520b94feee8e337d71",
           intel: "6fd9e3855e70028b88a05ba6be76e9101a601f1416fd6c0eb2078169dbe8937d"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "9.0.0,14"
    sha256 arm:   "538c5f2f1b366aca105d1aa8d81ed95c0fba1363b81fd5f4860ed60f41219d37",
           intel: "367beb97ce0fd84dd4832e90b7849c61e8955c23e362825e54685c42a17481cf"

    url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.dmg"

    livecheck do
      url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33"
      regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos(\d+)[._-]#{arch}\.dmg/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
      end
    end
  end

  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  depends_on macos: ">= :sierra"

  pkg "mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
