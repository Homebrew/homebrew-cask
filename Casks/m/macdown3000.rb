cask "macdown3000" do
  version "3000.0.1"
  sha256 "82965a72eed6d212a7cffebd711733178657cebae6b580ef6ef732acbd5b1f3a"

  url "https://github.com/schuyler/macdown3000/releases/download/v#{version}/MacDown-#{version}.dmg"
  name "MacDown 3000"
  desc "Markdown editor with live preview and syntax highlighting"
  homepage "https://macdown.app/"

  depends_on macos: ">= :big_sur"

  app "MacDown 3000.app"

  zap trash: [
    "~/Library/Application Support/MacDown 3000",
    "~/Library/Caches/app.macdown.macdown3000",
    "~/Library/Preferences/app.macdown.macdown3000.plist",
  ]
end
