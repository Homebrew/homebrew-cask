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

  zap trash: [
    "~/Library/Preferences/com.bitgamma.pdfkeypro.plist",
    "~/Library/Preferences/com.pdfkey.pdfkeypro.plist",
    "~/Library/Saved Application State/com.pdfkey.pdfkeypro.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
