cask "rwts-pdfwriter" do
  version "3.1e"
  sha256 "be3b2931b58e021d276e4e0bcb598536aec4f69642f546b7769583ca47b1675d"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  depends_on :macos

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: {
    executable: "/Library/Printers/RWTS/PDFwriter/uninstall",
    sudo:       true,
  }

  # No zap stanza required
end
