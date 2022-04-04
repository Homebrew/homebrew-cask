cask "media-converter" do
  version "3.0.1"
  sha256 "a87ea0a73c00169eaaa935f3ba83d41082b8842954b4b914835c09648293d8dc"

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip",
      verified: "downloads.sourceforge.net/media-converter/"
  name "Media Converter"
  desc "Convert avi, wmv, mkv, rm, mov and more to other formats"
  homepage "https://media-converter.sourceforge.io/"

  app "Media Converter.localized/Media Converter.app"

  zap trash: "~/Library/Preferences/com.kiwifruitware.Media-Converter.plist"
end
