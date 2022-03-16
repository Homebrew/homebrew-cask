cask "rwts-pdfwriter" do
  version "1.0.1"
  sha256 "9ce05f62bdbff73698b3a586973fcaeba4634e953108995e5b37da26de331609"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall.sh",
            rmdir:  [
              "/Users/Shared/PDFwriter",
              "/var/spool/pdfwriter",
            ]
end
