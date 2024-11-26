cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "25f6b694118aa0596b84aede48db7692320d4f4b2526f9c5f14ecf6cad5b3b26",
         intel: "81aa7e79d3c561bda36a0dc61b319ddd3c0137449006acdf102aa2d96513eb4e"

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
