cask "stremio" do
  version "4.4.137"
  sha256 "cea038eb7b5c45552276823c2a5776f334be03c580d57862b6a85258aa606c73"

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
