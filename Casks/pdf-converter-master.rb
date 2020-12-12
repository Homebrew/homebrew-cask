cask "pdf-converter-master" do
  version "6.2.0"
  sha256 "3134b19c8f234b1d0e948fec3115008ada48973f3a8c48ccdd8fd4e8bad7b923"

  url "https://www.lightenpdf.com/upload/download/pdf-converter-master-#{version.no_dots}.dmg"
  appcast "https://www.lightenpdf.com/pdf-converter-mac.html",
          must_contain: version.no_dots
  name "PDF Converter Master"
  homepage "https://www.lightenpdf.com/pdf-converter-mac.html"

  app "PDF Converter Master.app"
end
