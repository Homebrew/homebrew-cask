cask "pycharm" do
  arch arm: "-aarch64"

  version "2024.2,242.20224.347"
  sha256 arm:   "146819157fe9b0ccc94d5baf4a6662fc7f8319d55d6e751ea72d82da575d626f",
         intel: "a9cd69d10ab55dd8865968f4029e688bb59734711c4fb4acd7847d8206dc890a"

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.csv.first}#{arch}.dmg"
  name "PyCharm"
  name "PyCharm Professional"
  desc "IDE for professional Python development"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release"
    strategy :json do |json|
      json["PCP"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PyCharm.app"
  binary "#{appdir}/PyCharm.app/Contents/MacOS/pycharm"

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.pycharm.plist",
    "~/Library/Preferences/jetbrains.pycharm.*.plist",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
