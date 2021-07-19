cask "pycharm-edu" do
  version "2021.1.2,211.7628.16"

  if Hardware::CPU.intel?
    sha256 "74ea0fca6aefbf7c7916a5872f1d4fd107dff87e8604dc2057f785fc22124c30"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  else
    sha256 "fd5057f8cb2b3f1028058c6456af75b2d6e7bd261356fec421502de77ccba1a3"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}-aarch64.dmg"
  end

  name "Jetbrains PyCharm Educational Edition"
  name "PyCharm Edu"
  desc "Professional IDE for scientific and web Python development"
  homepage "https://www.jetbrains.com/pycharm-edu/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["PCE"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
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
