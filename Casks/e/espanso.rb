cask "espanso" do
  version "2.4.0"
  sha256 "aaf81d7573db785e5447b867e0f2f1d6f061ea9fa1756fda02f21b0402407669"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-Universal.dmg",
      verified: "github.com/espanso/espanso/"
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
