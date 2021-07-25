cask "3dgenceslicer" do
  version "4.0,2.4.2"
  sha256 "2f790a6fc5729bbc45f7dce6a884a3a8cce66b84950d6223e8e41e90b064d8c1"

  url "https://cloud.3dgence.com/downloads/slicer/3DGence%20Slicer%20#{version.before_comma}%20(v.#{version.after_comma}).dmg"
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
        "#{match[0]},#{match[1]}"
      end
    end
  end

  app "3DGence Slicer #{version.before_comma}.app"
end
