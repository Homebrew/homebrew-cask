cask "rwts-pdfwriter" do
  version "3.1f"
  sha256 "111482d8647339ccc7132d2306bbdad265f7cdabc82c0b3f982f0f5a65274b06"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Printer driver that saves documents as PDF files"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  depends_on :macos

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: {
    executable: "/Library/Printers/RWTS/PDFwriter/uninstall",
    sudo:       true,
  }

  zap :not_required
end
