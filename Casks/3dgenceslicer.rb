cask "3dgenceslicer" do
  version "3.2.0,4.0"
  sha256 "fc9b95d9602c3f2a5b89e5eb539f1a4e75cf8d0d04763c9122a4ee394721d3ca"

  url "https://cloud.3dgence.com/downloads/slicer/3DGenceSlicer-#{version.csv.second}-(v#{version.csv.first}).dmg"
  name "3DGence Slicer"
  desc "Prepare files for 3D printing based on CAD models for 3DGence printers"
  homepage "https://3dgence.com/"

  livecheck do
    url "http://support.3dgence.com/software.html"
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
