cask "media-converter" do
  version "2.0.10"
  sha256 "d5a7db000e8106e5892daad84ee7dea82651aa9662df5b4c6da0b943afae03c1"

  url "https://downloads.sourceforge.net/media-converter/media-converter/#{version}/media-converter-#{version}.zip",
      verified: "downloads.sourceforge.net/media-converter/"
  appcast "https://sourceforge.net/projects/media-converter/rss?path=/media-converter"
  name "Media Converter"
  homepage "https://media-converter.sourceforge.io/"

  app "Media Converter.localized/Media Converter.app"
end
