cask "crystaldiffract" do
  version "7.0.2"
  sha256 :no_check

  url "https://crystalmaker.com/downloads/crystaldiffract#{version.major}_mac.zip"
  name "CrystalDiffract"
  desc "Powder diffraction software including phase ID & Rietveld refinement"
  homepage "https://crystalmaker.com/crystaldiffract/index.html"

  livecheck do
    url "https://crystalmaker.com/support/updates/VersionData-CDM.xml"
    strategy :xml do |xml|
      xml.get_elements("//version").map { |item| item.attributes["number"] }
    end
  end

  depends_on macos: ">= :mojave"

  app "CrystalDiffract.app"

  zap trash: [
    "~/Library/Application Scripts/com.crystalmaker.crystaldiffract.v#{version.major}",
    "~/Library/Application Scripts/com.crystalmaker.crystaldiffract.v#{version.major}.QuickLookPlugin",
    "~/Library/Application Scripts/com.crystalmaker.crystaldiffract.v#{version.major}.ThumbnailExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.crystalmaker.crystaldiffract.v#{version.major}.sfl*",
    "~/Library/Containers/com.crystalmaker.crystaldiffract.v#{version.major}",
    "~/Library/Containers/com.crystalmaker.crystaldiffract.v#{version.major}.QuickLookPlugin",
    "~/Library/Containers/com.crystalmaker.crystaldiffract.v#{version.major}.ThumbnailExtension",
  ]
end
