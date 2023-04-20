cask "media-converter" do
  version "3.0.2"
  sha256 "e7753762138c2b5552b606d02ece75bb40969d626ea5027dd8165d78fb078369"

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip",
      verified: "downloads.sourceforge.net/media-converter/"
  name "Media Converter"
  desc "Convert avi, wmv, mkv, rm, mov and more to other formats"
  homepage "https://media-converter.sourceforge.io/"

  app "Media Converter.localized/Media Converter.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Media-Converter.plist"
end
