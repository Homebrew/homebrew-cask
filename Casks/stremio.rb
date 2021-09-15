cask "stremio" do
  version "4.4.142"
  sha256 "02c9d8e2e3936923d91a08176a771bd9622092fc820f9b4bb0d095e66c8e05dc"

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
