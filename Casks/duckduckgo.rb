cask "duckduckgo" do
  version "0.27.0"
  sha256 "a1605dfff0e9d9ff88b56a8c1bc074e87419238df7ae5b599ad54f8282958892"

  url "https://staticcdn.duckduckgo.com/macos-desktop-browser/duckduckgo-#{version}.dmg"
  name "DuckDuckGo"
  desc "Official DuckDuckGo Browser desktop app"
  homepage "https://duckduckgo.com/"

  livecheck do
    url "https://staticcdn.duckduckgo.com/macos-desktop-browser/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "DuckDuckGo.app"
end
