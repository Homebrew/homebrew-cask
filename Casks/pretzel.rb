cask "pretzel" do
  version "2.2.0"
  sha256 "41fb95ee6f1fa25baff19dd649266c8f18138e112107e0527935d588d3c8b791"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast "https://download.pretzel.rocks/latest-mac.json"
  name "Pretzel"
  homepage "https://www.pretzel.rocks/"

  app "Pretzel.app"
end
