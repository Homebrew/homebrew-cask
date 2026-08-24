cask "shapr3d" do
  version "26.151.0.11589"
  sha256 "b4e7b63283c5dee2ed036d2ce42c7b9afee9f433dcc5cfe5b79673c2ac29bdc7"

  url "https://download.shapr3d.com/mac/Shapr3D-#{version}.dmg"
  name "Shapr3D"
  desc "3D CAD software"
  homepage "https://www.shapr3d.com/"

  livecheck do
    url "https://download.shapr3d.com/mac/latest"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "Shapr3D.app"

  zap trash: [
    "~/Library/Application Scripts/com.shapr3d.shapr",
    "~/Library/Containers/com.shapr3d.shapr",
  ]
end
