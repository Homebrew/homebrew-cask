cask "creality-slicer" do
  version "4.8.2,96"
  sha256 :no_check

  url "https://file2-cdn.creality.com/website/b049ecf6-2295-4fac-8d10-377dc67a494c"
  name "Creality Slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  livecheck do
    url :url
    regex(/Creality[._-]Slicer[._-](\d+(?:\.\d+)+)[._-]build[._-](\d+)[._-]Darwin\.zip/i)
    strategy :header_match do |headers, regex|
      match = headers["content-disposition"].match(regex)
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
