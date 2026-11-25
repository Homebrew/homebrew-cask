cask "shapr3d" do
  version "26.220.0.12542"
  sha256 "b03c89c15b7a6c708aaa36105da1b4c4e446f7e57332cef952583895472afb00"

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
