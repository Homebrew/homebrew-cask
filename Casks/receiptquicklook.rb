cask "receiptquicklook" do
  version "1.3"
  sha256 "f3ad070586666d6eefc5883427d3cd6e4f2645bfb07d3a841f07ba550324a7fe"

  url "https://github.com/letiemble/ReceiptQuickLook/releases/download/#{version}/ReceiptQuickLook.qlgenerator.zip"
  appcast "https://github.com/letiemble/ReceiptQuickLook/releases.atom"
  name "ReceiptQuickLook"
  homepage "https://github.com/letiemble/ReceiptQuickLook"

  qlplugin "ReceiptQuickLook.qlgenerator"
end
