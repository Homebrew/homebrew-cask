cask "espanso" do
  arch arm: "M1", intel: "Intel"

  version "2.1.7-beta"
  sha256 arm:   "afb9705bf329b12a7500e2edf1a321dd51b76405e90dcac14799eb7da021a99a",
         intel: "4662260907fed968befe6b29587ac0a1f1108bd3b5c90db44fbae4ea36e4a603"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-#{arch}.zip",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.?\d*)?)$/i)
  end

  app "Espanso.app"
  binary "#{appdir}/Espanso.app/Contents/MacOS/espanso"

  zap trash: [
    "~/Library/Application Support/espanso",
    "~/Library/Caches/espanso",
    "~/Library/LaunchAgents/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/espanso.plist",
    "~/Library/Preferences/espanso",
    "~/Library/Saved Application State/com.federicoterzi.espanso.savedState",
  ]

  caveats do
    unsigned_accessibility
  end
end
