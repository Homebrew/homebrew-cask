cask "3dgenceslicer" do
  version "3.0.0,4.0"
  sha256 "0ad0d4a2a312125023e339e308afdf29f12fc55169a47cb97c331cd2b876ecd1"

  url "https://cloud.3dgence.com/downloads/slicer/3DGence%20Slicer%20#{version.after_comma}%20(v.#{version.before_comma}).dmg"
  name "3DGence Slicer"
  desc "Prepare files for 3D printing based on CAD models for 3DGence printers"
  homepage "https://3dgence.com/"

  livecheck do
    url "http://support.3dgence.com/software.html"
    regex(
      %r{href=.*?/3DGence(?:[._-]|%20)Slicer(?:[._-]|%20)(\d+(?:\.\d+)*)(?:[._-]|%20)\(v?\.?(\d+(?:\.\d+)*)\)\.dmg}i,
    )
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "3DGence Slicer #{version.after_comma}.app"
end
