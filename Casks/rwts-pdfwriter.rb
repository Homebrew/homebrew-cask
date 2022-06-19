cask "rwts-pdfwriter" do
  version "1.0.3"
  sha256 "990e055ff136dd3a53d37a4656604131d6f947f270ea531a9534c92b7ab2c2a1"

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
