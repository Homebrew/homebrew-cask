cask "pycharm-edu" do
  version "2021.1,211.7142.37"

  if Hardware::CPU.intel?
    sha256 "88cdd8d9afaed9c6d2792d952ca1568892901e76cffd111d163f26d27a2cc3cd"

    url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  else
    sha256 "8d972d603b07f6ba052eaf3ef4d7536099ec1c05ba14b6b77c836e1aebd8f83f"

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
