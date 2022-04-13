cask "3dgenceslicer" do
  version "3.1.1,4.0"
  sha256 "53f5e56af69d969cd4aec5360c6846857ab95d93e8d7326322ab8b372122a20c"

  url "https://cloud.3dgence.com/downloads/slicer/3DGence%20Slicer%20#{version.csv.second}%20(v.#{version.csv.first}).dmg"
  name "3DGence Slicer"
  desc "Prepare files for 3D printing based on CAD models for 3DGence printers"
  homepage "https://3dgence.com/"

  livecheck do
    url "http://support.3dgence.com/software.html"
    regex(
      %r{href=.*?/3DGence(?:[._-]|%20)Slicer(?:[._-]|%20)(\d+(?:\.\d+)+)(?:[._-]|%20)\(v?\.?(\d+(?:\.\d+)+)\)\.dmg}i,
    )
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "3DGence Slicer #{version.csv.second}.app"
end
