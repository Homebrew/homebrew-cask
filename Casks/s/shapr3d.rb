cask "shapr3d" do
  version "26.203.0.12356"
  sha256 "eb08a2df3d1c42d94d1d74183546dfc164148536be9ce3f612a16c4f7223af08"

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
