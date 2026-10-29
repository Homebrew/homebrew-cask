cask "shapr3d" do
  version "26.202.0.12281"
  sha256 "a7026e5cd0acff481bc2eb51e8b414459dd4653c0498b9eba8ff24f23a7c4124"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shapr3d.shapr.sfl*",
    "~/Library/Containers/com.shapr3d.shapr",
  ]
end
