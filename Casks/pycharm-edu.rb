cask "pycharm-edu" do
  version "2021.2.2,212.5284.55"

  if Hardware::CPU.intel?
    sha256 "7aa443199a2e9a2f51b387a76e06536f7536a8e8898956a013916aa4b3c8b130"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  else
    sha256 "694b02993bd75566d7df6edf355d2a71a9c9543413371d5963dbe4eebe816d9a"

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
