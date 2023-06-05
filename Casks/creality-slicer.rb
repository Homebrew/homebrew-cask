cask "creality-slicer" do
  version "4.8.2,172"
  sha256 "3767c53efa588daab001cc680b5a5527f19ab64e7c718ebbefbcfc02dd5d7296"

  url "https://file2-cdn.creality.com/file/6c68eac01dc22f26448a50f3ee8618c2/Creality_Slicer-#{version.csv.first}-build-#{version.csv.second}-Darwin.dmg"
  name "Creality Slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  # A product must be selected to download software for,
  # so we use an arbitrary product for livecheck
  livecheck do
    url "https://www.creality.com/pages/download-ender-5-s1"
    regex(/Creality[._-]Slicer[._-](\d+(?:\.\d+)+)[._-]build[._-](\d+)[._-]Darwin\.dmg/i)
    strategy :page_match do |page|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Creality Slicer.app"

  zap trash: [
    "~/Library/Application Support/Creality Slicer",
    "~/Library/Logs/Creality Slicer",
    "~/Library/Preferences/com.creality.crealityslicer.plist",
    "~/Library/Saved Application State/com.creality.crealityslicer.savedState",
  ]
end
