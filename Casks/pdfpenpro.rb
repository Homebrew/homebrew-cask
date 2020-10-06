cask "pdfpenpro" do
  version "1220.9,1601949963"
  sha256 "d9eee91205c556fd33b2f7218d0db5ebf8144eef81202623fe9ed8a04a6fec0c"

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast "https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml"
  name "PDFpenPro"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpenPro"

  depends_on macos: ">= :sierra"

  app "PDFpenPro.app"
end
