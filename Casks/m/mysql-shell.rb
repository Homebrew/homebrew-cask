cask "mysql-shell" do
  arch arm: "arm64", intel: "x86-64bit"

  on_sonoma :or_older do
    on_big_sur :or_older do
      version "8.0.29,12"
      sha256 arm:   "7095eaa8c67a8952101e0e6173645ac4377b1c06df5e8f87ceddea418d79b5a6",
             intel: "971e88d93f477437b7b6507408c0c31183f36af7922b7c2f6570ec314779ad20"
    end
    on_monterey do
      version "8.0.34,13"
      sha256 arm:   "c67890eff6829afbc234260b3f54d34cb65b699e53ae59520b94feee8e337d71",
             intel: "6fd9e3855e70028b88a05ba6be76e9101a601f1416fd6c0eb2078169dbe8937d"
    end
    on_ventura :or_newer do
      version "26.10.0,15"
      sha256 arm:   "ee8c53f120a3e846d0e472c26d0eff5e2b33a0530d8a72a21952f69ab9c6881b",
             intel: "f029ce63ff5d8c77ef2fdcda29deb848ab8fb0bc02ee4613e5b810d33fbb1aff"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "26.10.0,15"
    sha256 "ee8c53f120a3e846d0e472c26d0eff5e2b33a0530d8a72a21952f69ab9c6881b"

    livecheck do
      url "https://dev.mysql.com/downloads/shell/?tpl=platform&os=33",
          user_agent: :curl
      regex(/mysql[._-]shell[._-]v?(\d+(?:\.\d+)+)[._-]macos(\d+)[._-]#{arch}\.dmg/i)
      strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
      end
    end

    depends_on arch: :arm64
  end

  url "https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.dmg",
      user_agent: :curl
  name "MySQL Shell"
  desc "Interactive JavaScript, Python or SQL interface"
  homepage "https://dev.mysql.com/downloads/shell/"

  depends_on :macos

  pkg "mysql-shell-#{version.csv.first}-macos#{version.csv.second}-#{arch}.pkg"

  uninstall pkgutil: "com.mysql.shell"

  zap trash: "~/.mysqlsh"
end
