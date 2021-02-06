cask "pycharm-ce" do
  version "2020.3.3,203.7148.72"

  if Hardware::CPU.intel?
    sha256 "5c9fb106f823855f1a2e5ad412a955b3a7d7629d7f53998d04fdbd96a6a3ebec"
    url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  else
    sha256 "d240f81da686433a214a47d023033518a5180306d78a91147325e84ea7af552d"
    url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}-aarch64.dmg"
  end

  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "Free and open-source IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
    strategy :page_match do |page|
      version = page.match(/"version":"(\d+(?:\.\d+)*)/i)
      build = page.match(/"build":"(\d+(?:\.\d+)*)/i)
      "#{version[1]},#{build[1]}"
    end
  end

  auto_updates true

  app "PyCharm CE.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/PyCharmCE#{version.major_minor}",
    "~/Library/Caches/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharmCE#{version.major_minor}",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Preferences/PyCharmCE#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
