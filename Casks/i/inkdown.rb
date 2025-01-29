cask "inkdown" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "8bce6fabe53dc92b1e53b3f0e1300fac5b2dbec856793600bd7122275fc7ca78",
         intel: "b99f57a1a8a272174c8ea246dacd03d3d9c18a22dec854c3e385156c391dd784"

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
