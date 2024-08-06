cask "pycharm" do
  arch arm: "-aarch64"

  version "2024.1.5,241.18968.29"
  sha256 arm:   "7bec1964f65d0768ff631023e38ea781e3ec82f02a45b8a0b41c085d770751c0",
         intel: "68cfbebb5f1fbd949a66d86240ec2153b2d84119464a7fb80fd719a693b03f4e"

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
