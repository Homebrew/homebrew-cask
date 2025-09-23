cask "espanso" do
  version "2.2.7"
  sha256 "1d671417f5a6b94a86b0ac575d8d8146e3a80b8c23275fd673640b8bc5028e6b"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-Universal.zip",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
