cask "shapr3d" do
  version "26.200.0.12220"
  sha256 "71c7b5130d03ce138c5dd4ca6b58b40483534c5d14dcd15178873e6b85cad300"

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
