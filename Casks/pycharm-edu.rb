cask "pycharm-edu" do
  version "2021.2,212.4746.137"

  if Hardware::CPU.intel?
    sha256 "50b38606c347846c40823502a54d3225e9a9a4bdfcf8e318489fa22df2b0c0eb"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  else
    sha256 "9ebd135bea5174ac22d15be1a040d98af7a5bba8fb80de0d75e43d638215d5ce"

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
