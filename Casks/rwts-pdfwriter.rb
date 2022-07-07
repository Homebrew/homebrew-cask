cask "rwts-pdfwriter" do
  version "2.0"
  sha256 "8e653359009f07f107a02b02ac99d198528c87fc280964c772f90fed7d9557d3"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall"
end
