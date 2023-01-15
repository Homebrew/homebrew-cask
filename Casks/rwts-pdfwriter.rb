cask "rwts-pdfwriter" do
  version "2.0.2"
  sha256 "f09245bab5a79ca9afe2e36a13c450776b8a60d45dd0e69d1a8f45b3f6687438"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall"
end
