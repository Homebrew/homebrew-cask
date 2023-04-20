cask "espanso" do
  arch arm: "M1", intel: "Intel"

  version "2.1.8"
  sha256 arm:   "e84b5a96def1d793997fc8ee4e380f11b1d0515cf120402cd7aec6e07bafb74e",
         intel: "a17c03ff341beaf5a286aaab033dc443d703ed41f9dbfae653289dab00120bec"

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
