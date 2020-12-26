cask "stremio" do
  version "4.4.120"
  sha256 "e611290a6a591121f22c12718f2ba5919f63fc6b661793fc43e5da6d7ca7da87"

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
