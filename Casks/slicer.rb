cask "slicer" do
  version "4.11.20210226,1442768"
  sha256 "3d49b9aa783b3dd54a5be96770764cca86d2efdb8a4719edd05560a4c5121a8b"

  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}",
      verified: "slicer.kitware.com/midas3/"
  name "3D Slicer"
  desc "Medical image processing and visualization system"
  homepage "https://www.slicer.org/"

  livecheck do
    url "http://download.slicer.org"
    strategy :page_match do |page|
      match = page.scan(%r{href=.*?/bitstream/(\d+).*?version\s*(\d+(?:\.\d+)*)}im)
      "#{match[1][1]},#{match[1][0]}"
    end
  end

  app "Slicer.app"
end
