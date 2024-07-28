cask "pdf-images" do
  version "1.1"
  sha256 "76092c2978d062e7e18d6ec538c259d2360307261c53d98512dfdca340c9e19a"

  url "https://downloads.sourceforge.net/pdf-images/PDF-Images-#{version}.dmg"
  name "PDF-Images"
  homepage "https://sourceforge.net/projects/pdf-images/"

  app "PDF-Images.app"
  binary "#{appdir}/PDF-Images.app/Contents/MacOS/pdfimages"

  caveats do
    requires_rosetta
  end
end
