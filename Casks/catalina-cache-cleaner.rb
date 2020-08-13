cask "catalina-cache-cleaner" do
  version :latest
  sha256 :no_check

  url "https://www.northernsoftworks.com/downloads/ccc.dmg"
  name "Catalina Cache Cleaner"
  name "CCC"
  homepage "https://www.northernsoftworks.com/catalinacachecleaner.html"

  depends_on macos: ">= :catalina"

  app "Catalina Cache Cleaner.app"
end
