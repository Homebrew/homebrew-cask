cask "espanso" do
  arch = Hardware::CPU.intel? ? "Intel" : "M1"

  version "2.1.5-beta"

  if Hardware::CPU.intel?
    sha256 "6058ea8b851073ab97a6ffd257127ef7cfd367ccc6c290648217b3b657319539"
  else
    sha256 "8e71bf8904f3418ddc54c8faeb9e1f40fe4a57bef81d6c93468dbf0c55bcb210"
  end

  url "https://github.com/federico-terzi/espanso/releases/download/v#{version}/Espanso-Mac-#{arch}.zip",
      verified: "github.com/federico-terzi/espanso/"
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
