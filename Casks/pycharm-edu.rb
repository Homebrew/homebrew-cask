cask "pycharm-edu" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.2.3,212.5457.63"

  if Hardware::CPU.intel?
    sha256 "2ce7877299d7e218323cd3bb97fc44b05bc54467bfffc25b46bbcffa97caace6"
  else
    sha256 "0bb8d3407ef1e0fa4502dc750997b707d47c56d1c621256cecabf80637dc8996"
  end

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}#{arch}.dmg"
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
