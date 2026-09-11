cask "pycharm" do
  arch arm: "-aarch64"

  version "2026.2.2,262.10315.174"
  sha256 arm:   "33af0e3cce9b62f95f997acf997037bbc122da9b1c0bff8e1a820931689b9a66",
         intel: "d39426b23cbca302296a0f226e2c2e259abd0aee4dddb726c31e834204a8ef21"

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.csv.first}#{arch}.dmg"
  name "PyCharm"
  name "PyCharm Professional"
  desc "IDE for professional Python development"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCP&latest=true&type=release"
    strategy :json do |json|
      json["PCP"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "PyCharm.app"
  command_wrapper "pycharm",
                  executable: "#{appdir}/PyCharm.app/Contents/MacOS/pycharm"

  uninstall quit: "com.jetbrains.pycharm"

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Application Support/PyCharm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PyCharm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.pycharm.plist",
    "~/Library/Preferences/jetbrains.pc.*.plist",
    "~/Library/Preferences/jetbrains.py.*.plist",
    "~/Library/Preferences/jetbrains.pycharm.*.plist",
    "~/Library/Preferences/PyCharm#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
