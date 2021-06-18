cask "bigsur-cache-cleaner" do
  version "16.1.5"
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/bscc.dmg"
  name "Big Sur Cache Cleaner"
  name "BSCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/bigsurcachecleaner.html"

  livecheck do
    url :homepage
    regex(/Download\s*Big\s*Sur\s*Cache\s*Cleaner\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Big Sur Cache Cleaner.app"
end
