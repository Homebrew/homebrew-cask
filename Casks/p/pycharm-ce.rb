cask "pycharm-ce" do
  arch arm: "-aarch64"

  version "2024.1.2,241.17011.127"
  sha256 arm:   "bd9923b5595db072dc59c6ed037ab167eecdd55344ca4f3e59707ac6b0b2ba4b",
         intel: "6055b9fe2a3e3ad906c160300b469cf4698e4fd1151c94e555f2ede423cc03a7"

  url "https://download.jetbrains.com/python/pycharm-community-#{version.csv.first}#{arch}.dmg"
  name "Jetbrains PyCharm Community Edition"
  name "PyCharm CE"
  desc "IDE for Python programming - Community Edition"
  homepage "https://www.jetbrains.com/pycharm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
    strategy :json do |json|
      json["PCC"].map do |release|
        "#{release["version"]},#{release["build"]}"
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
