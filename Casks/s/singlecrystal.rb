cask "singlecrystal" do
  version "5.1.0"
  sha256 :no_check

  url "https://crystalmaker.com/downloads/singlecrystal#{version.major}_mac.zip"
  name "SingleCrystal"
  desc "Crystal diffraction software"
  homepage "https://crystalmaker.com/singlecrystal/index.html"

  livecheck do
    url "https://crystalmaker.com/support/updates/VersionData-SCM.xml"
    strategy :xml do |xml|
      xml.get_elements("//version").map { |item| item.attributes["number"] }
    end
  end

  depends_on macos: ">= :mojave"

  app "SingleCrystal.app"

  zap trash: [
    "~/Library/Application Scripts/com.crystalmaker.singlecrystal.v#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.crystalmaker.singlecrystal.v#{version.major}.sfl*",
    "~/Library/Containers/com.crystalmaker.singlecrystal.v#{version.major}",
  ]
end
