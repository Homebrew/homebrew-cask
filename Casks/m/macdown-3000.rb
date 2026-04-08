cask "macdown-3000" do
  version "3000.0.5"
  sha256 "1e64e75a73e07494cdf7a504f5b610da72e47ff0112a6c63bc159ff0e99b20a7"

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
