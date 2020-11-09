cask "pdfpen" do
  version "1220.9,1601950457"
  sha256 "9366d1489d578ce391629ae4df96efbf3060b2dfb8e47ebebc3e76c581772794"

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast "https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml"
  name "PDFpen"
  desc "PDF editor"
  homepage "https://smilesoftware.com/PDFpen"

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
