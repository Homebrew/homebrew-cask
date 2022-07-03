cask "espanso" do
  arch = Hardware::CPU.intel? ? "Intel" : "M1"

  version "2.1.6-beta"

  if Hardware::CPU.intel?
    sha256 "63322c649d4b6aa3c4bfeddd99a1c2c095c77051271238faaaa19ede4f7e9576"
  else
    sha256 "46137b5e7316a1c85574d45468b510e14a58cd495d5eb74de74f482dd241c447"
  end

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
