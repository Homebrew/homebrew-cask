cask "crystalviewer" do
  version "11.1.0"
  sha256 :no_check

  url "https://crystalmaker.com/downloads/crystalviewer#{version.major}_mac.zip"
  name "CrystalViewer"
  desc "Interactive galleries of 3D crystal & molecular structures"
  homepage "https://crystalmaker.com/crystalviewer/index.html"

  livecheck do
    url "https://crystalmaker.com/support/updates/VersionData-CVM.xml"
    regex(/<version[^>]+?number=["']?v?(\d+(?:\.\d+)+)["']?[^>]*?>/i)
  end

  depends_on macos: ">= :mojave"

  app "CrystalViewer.app"

  zap trash: [
    "~/Library/Application Scripts/com.crystalmaker.crystalviewer.v#{version.major}",
    "~/Library/Containers/com.crystalmaker.crystalviewer.v#{version.major}",
  ]
end
