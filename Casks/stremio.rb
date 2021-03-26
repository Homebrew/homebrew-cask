cask "stremio" do
  version "4.4.135"
  sha256 "e1b2f3b66e0f3111121c98a99b181f3540306b4f410bedba7b25bd12e46b07a5"

  url "https://dl.strem.io/shell-osx/v#{version}/Stremio+#{version}.dmg"
  name "Stremio"
  desc "Open-source media center"
  homepage "https://www.strem.io/"

  livecheck do
    url "https://www.strem.io/download?platform=mac&four=true"
    strategy :header_match
  end

  app "Stremio.app"
end
