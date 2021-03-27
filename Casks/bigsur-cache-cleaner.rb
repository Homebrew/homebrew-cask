cask "bigsur-cache-cleaner" do
  version "16.1.1,16.1.0.0.0"
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/bscc.dmg"
  name "Big Sur Cache Cleaner"
  name "BSCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/bigsurcachecleaner.html"

  depends_on macos: ">= :mojave"

  app "Big Sur Cache Cleaner.app"
end
