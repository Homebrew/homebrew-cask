cask "gifcapture" do
  version "1.1.0"
  sha256 "29a6d998b3028fb0f2f232b8b99dd388d338a713aab4aac71699ceb7330af5ba"

  url "https://github.com/onmyway133/GifCapture/releases/download/#{version}/GifCapture.zip"
  name "GifCapture"
  homepage "https://github.com/onmyway133/GifCapture"

  deprecate! date: "2024-07-11", because: :unmaintained

  app "GifCapture.app"

  caveats do
    requires_rosetta
  end
end
