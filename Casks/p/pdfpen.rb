cask "pdfpen" do
  version "13.1"
  sha256 "1f76e0d76eedc6d9d1d013f380cf101507a2ca858e669e25786a01418041231d"

  url "https://cdn.smilesoftware.com/PDFpen_#{version}.dmg"
  name "PDFpen"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpen"

  deprecate! date: "2024-09-30", because: :discontinued

  depends_on macos: ">= :sierra"

  app "PDFpen.app"

  zap trash: [
    "~/Library/Application Scripts/com.smileonmymac.PDFpen",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.smileonmymac.pdfpen.sfl*",
    "~/Library/Containers/com.smileonmymac.PDFpen",
  ]
end
