cask "shapr3d" do
  version "26.190.0.12073"
  sha256 "e3c8961da3188bffc3f38c9d47fc5e2c1a488581b64696de4c3cbc9495fbe27d"

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
