cask "diskmaker-x" do
  on_mojave :or_older do
    version "8.0.3"
    sha256 "79b490dc829775450aafadeddd0afc58bdcef9c60fc82d9db1427c51b57e88a7"

    app "DiskMaker X #{version.major} for macOS Mojave.app"
  end
  on_catalina :or_newer do
    version "9.0"
    sha256 "96845cd375543401b822fb4e17d2ecc300fcb621f56afcdad613ae11c9afddce"

    app "DiskMaker X #{version.major} for macOS Catalina.app"
  end

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.major}.dmg"
  name "DiskMaker X"
  desc "Tool to build a system install disk"
  homepage "https://diskmakerx.com/"

  disable! date: "2024-04-14", because: :no_longer_available
end
