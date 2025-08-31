cask "rwts-pdfwriter" do
  version "3.1b"
  sha256 "f435920c5b101a5cda4ac5c165962837cd6329a6b4e16a285db2c4c6e3ea8444"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: {
    executable: "/Library/Printers/RWTS/PDFwriter/uninstall",
    sudo:       true,
  }

  # No zap stanza required
end
