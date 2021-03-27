cask "media-converter" do
  version "3.0"
  sha256 "a5c61e461aca7c570a3ea99f0ecf0f27a8e2ab5713c3edd79d3eaf7ca1543b5e"

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip",
      verified: "downloads.sourceforge.net/media-converter/"
  appcast "https://sourceforge.net/projects/media-converter/rss?path=/media-converter"
  name "Media Converter"
  homepage "https://media-converter.sourceforge.io/"

  app "Media Converter.localized/Media Converter.app"
end
