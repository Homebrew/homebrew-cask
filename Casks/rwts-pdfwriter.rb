cask "rwts-pdfwriter" do
  version "2.0"
  sha256 "3ceb2219db6f279b2c6b1bc53a34b2ac6a919c4650143a825408ba59489e7915"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall"
end
