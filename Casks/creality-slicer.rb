cask "creality-slicer" do
  version "4.8.2,172"
  sha256 :no_check

  url "https://file2-cdn.creality.com/file/6c68eac01dc22f26448a50f3ee8618c2/Creality_Slicer-4.8.2-build-172-Darwin.dmg"
  name "Creality Slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  livecheck do
    url :url
    regex(/Creality[._-]Slicer[._-](\d+(?:\.\d+)+)[._-]build[._-](\d+)[._-]Darwin\.dmg/i)
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
