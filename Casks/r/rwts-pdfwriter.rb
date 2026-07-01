cask "rwts-pdfwriter" do
  version "3.1d"
  sha256 "8cb22cd015699c014711c0d72f1e19f79b62610be93b03c60b421e7417c7de53"

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
