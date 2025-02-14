cask "pycharm-ce" do
  arch arm: "-aarch64"

  version "2024.3.3,243.24978.54"
  sha256 arm:   "4737c340527ebe7b434010d21aac57b3e23625739a06130d7b1058773a2306a9",
         intel: "b32d12edbc56c4bfb071bc13a657499db1294d727a020017874b4da60f9b0e9a"

  url "https://download.jetbrains.com/python/pycharm-community-#{version.csv.first}#{arch}.dmg"
  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
    strategy :json do |json|
      json["PCC"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PyCharm CE.app"
  binary "#{appdir}/PyCharm CE.app/Contents/MacOS/pycharm", target: "pycharm-ce"

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/com.apple.python/Applications/PyCharm CE.app",
    "~/Library/Caches/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Caches/PyCharm#{version.major_minor}",
    "~/Library/Caches/PyCharmCE#{version.major_minor}",
    "~/Library/Logs/JetBrains/PyCharmCE#{version.major_minor}",
    "~/Library/Logs/PyCharm#{version.major_minor}",
    "~/Library/Logs/PyCharmCE#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.pycharm.ce.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Preferences/PyCharmCE#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.ce.savedState",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
