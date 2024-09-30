cask "pdfpenpro" do
  version "12.2.3"
  sha256 "6522b30a957ceeea13bc18506da501673ab3798fbdfe5fe73add6d764f5dc0a8"

  url "https://cdn.smilesoftware.com/PDFpenPro_#{version}.dmg"
  name "PDFpenPro"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpenPro"

  deprecate! date: "2024-09-30", because: "has been replaced by nitro-pdf-pro"

  depends_on macos: ">= :sierra"

  app "PDFpenPro.app"
end
