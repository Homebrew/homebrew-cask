cask "macdown-3000" do
  version "3000.0.4"
  sha256 "438c9f577ca09065f66bc3011f556ae2589b6f71aa395ea32f920c7fd470ffd5"

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
