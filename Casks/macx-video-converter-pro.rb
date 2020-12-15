cask "macx-video-converter-pro" do
  version "6.5.2,20201215"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-video-converter-pro.dmg"
  appcast "http://www.macxdvd.com/mac-video-converter-pro/upgrade/video-converter-pro.xml"
  name "MacX Video Converter Pro"
  desc "Tool to convert, edit, download & resize videos"
  homepage "https://www.macxdvd.com/mac-video-converter-pro/"

  app "MacX Video Converter Pro.app"
end
