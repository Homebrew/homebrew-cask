cask "macx-video-converter-pro" do
  version "6.5.3"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-video-converter-pro.dmg"
  name "MacX Video Converter Pro"
  desc "Tool to convert, edit, download & resize videos"
  homepage "https://www.macxdvd.com/mac-video-converter-pro/"

  livecheck do
    url "http://www.macxdvd.com/mac-video-converter-pro/upgrade/video-converter-pro.xml"
    regex(%r{LastestVersion</key>\s*<string>(\d+(?:\.\d+)*)<}i)
  end

  app "MacX Video Converter Pro.app"
end
