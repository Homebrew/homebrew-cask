cask "pycharm-ce" do
  version "2021.1.2,211.7442.45"

  if Hardware::CPU.intel?
    sha256 "a3683ba863792143b4f6fd8efc43d12e4888101428942d868d7ced940dd5738e"
    url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}.dmg"
  else
    sha256 "366d3dbbf75f7ac9315a5b344f4c0a95d88f3faaae273cc9bd16fb23ade471b4"
    url "https://download.jetbrains.com/python/pycharm-community-#{version.before_comma}-aarch64.dmg"
  end

  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["PCC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
