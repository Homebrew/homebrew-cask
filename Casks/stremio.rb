cask "stremio" do
  version "4.4.132"
  sha256 "1373ab9a3d873e225a02826cc593468b2c7bc370c2286ac3babdd2367be6a913"

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
