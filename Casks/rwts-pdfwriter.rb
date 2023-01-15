cask "rwts-pdfwriter" do
  version "2.0.3"
  sha256 "582c78868d69f771ba161610cb2651546e12ec779babb19d74fbcf9dcd03d0af"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  installer manual: "RWTS-PDFwriter.pkg"

  uninstall script: "/Library/Printers/RWTS/PDFwriter/uninstall"
end
