cask "macdown-3000" do
  version "3000.0.3"
  sha256 "f5bdf6cb76b4d928f7a3dff94529ef4fe06d98980930347e7149524f9eaf8d8a"

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
