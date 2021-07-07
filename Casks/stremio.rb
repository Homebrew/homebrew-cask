cask "stremio" do
  version "4.4.141"
  sha256 "ec41ba76004bcc8b4da93d8ef8483ea5ff6037fc83b862c592d5ca57bc34b5a5"

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
