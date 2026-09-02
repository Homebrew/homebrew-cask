cask "espanso" do
  version "2.4.1"
  sha256 "e6aee2d9446d7625e57dafc6613add21fc7c9f709ba42f08b5ada844c6f7110a"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-Universal.dmg"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Espanso.app"
  binary "#{appdir}/Espanso.app/Contents/MacOS/espanso"

  zap trash: [
    "~/Library/Application Support/espanso",
    "~/Library/Caches/espanso",
    "~/Library/LaunchAgents/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/espanso",
    "~/Library/Preferences/espanso.plist",
    "~/Library/Saved Application State/com.federicoterzi.espanso.savedState",
  ]
end
