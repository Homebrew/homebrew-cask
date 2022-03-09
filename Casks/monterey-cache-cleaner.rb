cask "monterey-cache-cleaner" do
  version "17.0.2"
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/nscc.dmg"
  name "Monterey Cache Cleaner"
  name "MCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/montereycachecleaner.html"

  livecheck do
    url :homepage
    regex(/Download\s*Monterey\s*Cache\s*Cleaner\s*v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Monterey Cache Cleaner.app"
end
