cask "bigsur-cache-cleaner" do
  version :latest
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/bscc.dmg"
  name "Big Sur Cache Cleaner"
  name "BSCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/bigsurcachecleaner.html"

  depends_on macos: ">= :yosemite"

  app "Big Sur Cache Cleaner.app"
end
