cask "rwts-pdfwriter" do
  version "2.0"
  sha256 "46ff8a69b5aa150bdbecda4ec4f0999d017b9645aa3b794e355916bc350d29cd"

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
