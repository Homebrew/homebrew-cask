cask "northern-softworks-cache-cleaner" do
  version "18.0"
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/nscc.dmg"
  name "Ventura Cache Cleaner"
  name "VCC"
  desc "General purpose system maintenance tool"
  homepage "https://www.northernsoftworks.com/venturacachecleaner.html"

  livecheck do
    url :homepage
    regex(/Download\s*Ventura\s*Cache\s*Cleaner\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Ventura Cache Cleaner.app"
end
