cask "pycharm-edu" do
  version "2021.1.1,211.7442.17"

  if Hardware::CPU.intel?
    sha256 "69ad5eab8fd4498efcad31e0fb54cccd275c1437307abd0be56ff2295b9f2a00"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  else
    sha256 "046ba94c9d8d30293419d096c4ca5a81d3599ce9e15b5435bd6247e5234eb77e"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}-aarch64.dmg"
  end

  name "Jetbrains PyCharm Educational Edition"
  name "PyCharm Edu"
  desc "Professional IDE for scientific and web Python development"
  homepage "https://www.jetbrains.com/pycharm-edu/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "PyCharm Edu.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PyCharmEdu#{version.major_minor}",
    "~/Library/Caches/PyCharmEdu#{version.major_minor}",
    "~/Library/Logs/PyCharmEdu#{version.major_minor}",
    "~/Library/Preferences/PyCharmEdu#{version.major_minor}",
  ]
end
