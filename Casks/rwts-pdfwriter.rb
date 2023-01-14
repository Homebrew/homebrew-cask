cask "rwts-pdfwriter" do
  version "2.0.1"
  sha256 "bce0ec53a1219bbcdb8bd3869475714291ed3ac7bccefc7002219e68ba4baf36"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall"
end
