cask "singlecrystal" do
  version "5.0.0"
  sha256 :no_check

  url "https://crystalmaker.com/downloads/singlecrystal#{version.major}_mac.zip"
  name "SingleCrystal"
  desc "Single-crystal diffraction software"
  homepage "https://crystalmaker.com/singlecrystal/index.html"

  depends_on macos: ">= :mojave"

  app "SingleCrystal.app"

  zap trash: [
    "~/Library/Application Scripts/com.crystalmaker.singlecrystal.v#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.crystalmaker.singlecrystal.v#{version.major}.sfl*",
    "~/Library/Containers/com.crystalmaker.singlecrystal.v#{version.major}",
  ]
end
