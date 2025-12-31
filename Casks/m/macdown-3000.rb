cask "macdown-3000" do
  version "3000.0.2"
  sha256 "e75cd7373c9e69a9dbafa13f1873ab8c9de70332b096a64b1ecffa70483e2629"

  url "https://github.com/schuyler/macdown3000/releases/download/v#{version}/MacDown-#{version}.dmg",
      verified: "github.com/schuyler/macdown3000/"
  name "MacDown 3000"
  desc "Markdown editor with live preview and syntax highlighting"
  homepage "https://macdown.app/"

  conflicts_with cask: "macdown"
  depends_on macos: ">= :big_sur"

  app "MacDown 3000.app"
  binary "#{appdir}/MacDown 3000.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
    "~/Library/Application Support/MacDown 3000",
    "~/Library/Caches/app.macdown.macdown3000",
    "~/Library/Preferences/app.macdown.macdown3000.plist",
  ]
end
