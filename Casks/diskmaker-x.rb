cask "diskmaker-x" do
  if MacOS.version <= :mojave
    version "8.0.3"
    sha256 "79b490dc829775450aafadeddd0afc58bdcef9c60fc82d9db1427c51b57e88a7"

    app "DiskMaker X #{version.major} for macOS Mojave.app"
  else
    version "9"
    sha256 "96845cd375543401b822fb4e17d2ecc300fcb621f56afcdad613ae11c9afddce"

    app "DiskMaker X #{version.major} for macOS Catalina.app"
  end

  url "https://diskmakerx.com/downloads/DiskMaker_X_#{version.no_dots}.dmg"
  appcast "https://diskmakerx.com/feed/"
  name "DiskMaker X"
  desc "Tool to build a system install disk"
  homepage "https://diskmakerx.com/"
end
