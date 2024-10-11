cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "99de1727ab8c8c72cb70b7c9d45967634f8ffaba588180dc4d7faf88a86ae859",
         intel: "87dacc07cbce8b0a89fb1e0fdf1e1bf0253585b72125304a8baf264452ed140c"

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
