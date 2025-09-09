cask "rwts-pdfwriter" do
  version "3.1c"
  sha256 "6d666c61d61854128b1268cf9bf23f86b66170280083fbdc870f2d2ad248a8e5"

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
