cask "3dgenceslicer" do
  version "3.3.0,4.0"
  sha256 "b1b34d7582950a288e6ce4d216d7383cea4b4d71962817d632d8be6d1253871a"

  url "https://cloud.3dgence.com/downloads/slicer/3DGenceSlicer-#{version.csv.second}-(v#{version.csv.first}).dmg"
  name "3DGence Slicer"
  desc "Prepare files for 3D printing based on CAD models for 3DGence printers"
  homepage "https://3dgence.com/"

  livecheck do
    url "https://support.3dgence.com/software.html"
    regex(
      %r{href=.*?/3DGence(?:[._-]|%20)?Slicer(?:[._-]|%20)(\d+(?:\.\d+)+)(?:[._-]|%20)\(v?\.?(\d+(?:\.\d+)+)\)\.dmg}i,
    )
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "3DGence Slicer #{version.csv.second}.app"
end
