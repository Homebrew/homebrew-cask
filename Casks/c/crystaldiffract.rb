cask "crystaldiffract" do
  version "7.0.1"
  sha256 :no_check

  url "https://crystalmaker.com/downloads/crystaldiffract#{version.major}_mac.zip"
  name "CrystalDiffract"
  desc "Powder diffraction software including phase ID & rietveld refinement"
  homepage "https://crystalmaker.com/crystaldiffract/index.html"

  livecheck do
    url "https://crystalmaker.com/support/updates/VersionData-CDM.xml"
    regex(/\b(\d+\.\d+\.\d+)\b/)
    strategy :xml do |xml, regex|
      xml.get_elements("versiondata/versionlist/version").map { |item| item.attributes["number"][regex, 1] }
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
