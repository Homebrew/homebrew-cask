cask "macx-video-converter-pro" do
  version "6.9.0"
  sha256 :no_check

  url "https://www.macxdvd.com/download/macx-video-converter-pro.dmg"
  name "MacX Video Converter Pro"
  desc "Tool to convert, edit, download & resize videos"
  homepage "https://www.macxdvd.com/mac-video-converter-pro/"

  livecheck do
    url "https://www.macxdvd.com/mac-video-converter-pro/upgrade/video-converter-pro.xml"
    strategy :xml do |xml|
      # `LastestVersion` is an upstream typo of `LatestVersion`
      xml.get_elements("//key[text()='LastestVersion']").map { |item| item.next_element&.text&.strip }
    end
  end

  app "MacX Video Converter Pro.app"

  zap trash: "~/Library/Preferences/com.macxdvd.macxvdoconverterpro.plist"

  caveats do
    requires_rosetta
  end
end
