cask "stremio" do
  version "4.4.159"
  sha256 "26838990a572a834ae6edb085fd56fed62550d453fa4592dece8d29925222bdc"

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
