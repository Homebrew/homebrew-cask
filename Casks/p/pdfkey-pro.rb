cask "pdfkey-pro" do
  version "4.5.0"
  sha256 :no_check

  url "https://pdfkey.com/PDFKeyPro.dmg"
  name "PDFKey Pro"
  desc "Utility to unlock password-protected PDFs"
  homepage "https://pdfkey.com/en/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)*)/i)
  end

  app "PDFKey Pro.app"

  caveats do
    requires_rosetta
  end
end
