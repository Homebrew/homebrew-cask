cask "receiptquicklook" do
  version "1.4"
  sha256 "709fb09f38f57f8cb1e02f2a0390046bcceaa832d014bf5ca8c60e80da60165c"

  url "https://github.com/letiemble/ReceiptQuickLook/releases/download/#{version}/ReceiptQuickLook.qlgenerator.zip"
  appcast "https://github.com/letiemble/ReceiptQuickLook/releases.atom"
  name "ReceiptQuickLook"
  homepage "https://github.com/letiemble/ReceiptQuickLook"

  qlplugin "ReceiptQuickLook.qlgenerator"
end
