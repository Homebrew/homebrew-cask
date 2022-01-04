cask "creality-slicer" do
  version "4.8.2,96"
  sha256 :no_check

  url "https://file2-cdn.creality.com/website/b049ecf6-2295-4fac-8d10-377dc67a494c"
  name "Creality Slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  livecheck do
    url :homepage
    regex(/Creality[._-]Slicer[._-](\d+(?:\.\d+)+)[._-]build[._-](\d+)[._-]Darwin\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
