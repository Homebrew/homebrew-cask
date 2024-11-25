cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "8069397db1ad27fd5cc3cdd637b1717bece73d3d3fa161962d2d24ffa0991227",
         intel: "4dea0b51c9fff423aff6823280eafb7cebbe97ea5b6b788d0e17d4903677f62f"

  url "https://github.com/1943time/inkdown/releases/download/v#{version}/inkdown-mac-#{arch}.dmg"
  name "Inkdown"
  desc "WYSIWYG Markdown editor"
  homepage "https://github.com/1943time/inkdown"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Inkdown.app"

  zap trash: [
    "~/Library/Application Support/inkdown",
    "~/Library/Preferences/inkdown.plist",
    "~/Library/Saved Application State/inkdown.savedState",
  ]
end
