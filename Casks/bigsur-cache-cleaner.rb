cask "bigsur-cache-cleaner" do
  version "16.1.0.0.0"
  sha256 "203e0c438cbea431305739bed4d8804d7daf28f00348d857971a6cb61dbc8fe6"

  url "https://www.northernsoftworks.com/downloads/bscc.dmg"
  name "Big Sur Cache Cleaner"
  name "BSCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/bigsurcachecleaner.html"

  depends_on macos: ">= :mojave"

  app "Big Sur Cache Cleaner.app"
end
