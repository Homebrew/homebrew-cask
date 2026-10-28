cask "kinetaios" do
  arch arm: "arm64", intel: "x64"

  version "4.0.3"
  sha256 arm:   "175e014b56dd4437a63a9a7fd5cd51c77ec804a246cf5f526ad657ce29b49248",
         intel: "3d790e39dbce880499db5f5e78b5362f016b79eb4b22f3b3b559d2cfeb415aef"

  url "https://github.com/phinn/KinetAios/releases/download/v#{version}/KinetAios-#{version}-#{arch}.dmg",
      verified: "github.com/phinn/KinetAios/"
  name "KinetAios"
  desc "Local-first multi-engine AI agent dashboard for Windows and macOS"
  homepage "https://phinn.github.io/KinetAios/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "KinetAios.app"

  uninstall quit: "com.kinet.kinetaios"

  zap trash: [
    "~/Library/Application Support/KinetAios",
    "~/Library/Caches/com.kinet.kinetaios",
    "~/Library/Saved Application State/com.kinet.kinetaios.savedState",
  ]

  caveats <<~EOS
    On first launch, KinetAios creates a local SQLite database and a browser profile
    under ~/Library/Application Support/KinetAios. No account or network relay is required.
  EOS
end
