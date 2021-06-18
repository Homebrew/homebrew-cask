cask "pdfkey-pro" do
  version "4.3.9"
  sha256 :no_check

  url "https://pdfkey.com/PDFKeyPro.dmg"
  name "PDFKey Pro"
  homepage "https://pdfkey.com/"

  livecheck do
    url :homepage
    regex(/Version\s+(\d+(?:\.\d+)*)/i)
  end

  app "PDFKey Pro.app"
end
