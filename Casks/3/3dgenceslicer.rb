cask "3dgenceslicer" do
  version "3.4.0,4.0"
  sha256 "3fc0b3b4aac1b05e54d80e66640fda1ae5ec498596bef8568a140be46ab62c45"

  url "https://cloud.3dgence.com/downloads/slicer/3DGenceSlicer-#{version.csv.second}-(v#{version.csv.first}).dmg"
  name "3DGence Slicer"
  desc "Prepare files for 3D printing based on CAD models for 3DGence printers"
  homepage "https://3dgence.com/"

  livecheck do
    url "https://support.3dgence.com/software.html"
    regex(/3DGence(?:[._-]|\s)?Slicer(?:[._-]|\s)?(\d+(?:\.\d+)+)(?:[._-]|\s)?
          \((?:version|v)?(?:[._-]|\s)?(\d+(?:\.\d+)+)\)(?:[._-]|\s+)*system(?:[._-]|\s)MacOS/ix)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "3DGence Slicer #{version.csv.second}.app"

  zap trash: [
        "~/Library/Caches/3DGence Slicer",
        "~/Library/Preferences/com.3dgence.slicer.3DGence Slicer.plist",
        "~/Library/Saved Application State/com.3dgence.slicer.savedState",
      ],
      rmdir: "~/Documents/3DGence Slicer"
end
