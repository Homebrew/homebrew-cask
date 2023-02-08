cask "rwts-pdfwriter" do
  version "3.1"
  sha256 "71e5f4828d04f524901a758779e1cf13d6b09c59f5796dd5ba8d1f199086a221"

  url "https://github.com/rodyager/RWTS-PDFwriter/releases/download/v#{version}/RWTS-PDFwriter.pkg"
  name "RWTS PDFwriter"
  desc "Print driver for printing documents directly to a pdf file"
  homepage "https://github.com/rodyager/RWTS-PDFwriter"

  pkg "RWTS-PDFwriter.pkg"

  uninstall script: {
    executable: "/Library/Printers/RWTS/PDFwriter/uninstall",
    sudo:       true,
  }
end
