cask "pycharm-edu" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3.1,213.5744.302"

  if Hardware::CPU.intel?
    sha256 "baa2ccc3b2c50dc207217fa852d1a38c9b4165dec05af534fe3f3ed0c2db28d7"
  else
    sha256 "2f75c1ee6b80370c9d5d9afd9b347736ba754622957e3fe99ba990f66e7826d1"
  end

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.csv.first}#{arch}.dmg"
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
