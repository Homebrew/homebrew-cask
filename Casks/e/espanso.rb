cask "espanso" do
  version "2.3.0"
  sha256 "e785543bc37e9860434e2e00ccc18a5df7409ab9b20d1f41bfc4801b5e543eae"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-Universal.zip",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  container nested: "espanso/Espanso.dmg"

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
