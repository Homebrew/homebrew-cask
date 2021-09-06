cask "pdf-converter-master" do
  version "6.2.0"
  sha256 "3134b19c8f234b1d0e948fec3115008ada48973f3a8c48ccdd8fd4e8bad7b923"

  url "https://www.lightenpdf.com/upload/download/pdf-converter-master-#{version.no_dots}.dmg"
  name "PDF Converter Master"
  homepage "https://www.lightenpdf.com/pdf-converter-mac.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "PDF Converter Master.app"
end
