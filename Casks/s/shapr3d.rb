cask "shapr3d" do
  version "5.791.0.8191"
  sha256 "2de3080e355fb2aeceefe949ddcdcde767d3d5d56926db8c6ac6528b1afc06cd"

  url "https://download.shapr3d.com/mac/Shapr3D-#{version}.dmg"
  name "Shapr3D"
  desc "3D CAD software"
  homepage "https://www.shapr3d.com/"

  livecheck do
    url "https://download.shapr3d.com/mac/latest"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "Shapr3D.app"

  zap trash: [
    "~/Library/Application Scripts/com.shapr3d.shapr",
    "~/Library/Containers/com.shapr3d.shapr",
  ]
end
