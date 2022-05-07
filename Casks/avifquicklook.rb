cask "avifquicklook" do
  version "1.1.0"
  sha256 "44cb0a387f8e1a2dcb18a9be9efc473d3a6c5935f61bd02adb7f95e683233250"

  url "https://github.com/dreampiggy/AVIFQuickLook/releases/download/#{version}/AVIFQuickLook.qlgenerator.zip"
  name "AVIFQuickLook"
  desc "QuickLook Plugin for AVIF images"
  homepage "https://github.com/dreampiggy/AVIFQuickLook"

  qlplugin "AVIFQuickLook.qlgenerator"
end
