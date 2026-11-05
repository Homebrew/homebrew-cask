cask "pycharm" do
  arch arm: "-aarch64"

  version "2026.3,263.7307.206"
  sha256 arm:   "6a4ba27899d8ff6462bec0e84aa8251810d151215643ef36806cd47f9c89df32",
         intel: "2b30e1cadc391c4e79620ec7d2d488ed0bd79d0045a246a9a25635a4bf4630b5"

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

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.pycharm"

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
