cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "8.1.0"

  if Hardware::CPU.intel?
    sha256 "0bd5f25bd0437c4a15240e8abb3cc4a67d71fc2b9f1778b6dba0057c5da08046"
  else
    sha256 "61cf30c0be51131e9c8fa31b2bce2db6d197a6a59dceac6ffb59191b86baa2dc"
  end

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.dmg",
      verified: "github.com/firstversionist/polypane/"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"

  app "Polypane.app"

  zap trash: [
    "~/Library/Application Support/Polypane",
    "~/Library/Caches/com.firstversionist.polypane.ShipIt",
    "~/Library/Caches/com.firstversionist.polypane",
    "~/Library/Logs/Polypane",
    "~/Library/Preferences/com.firstversionist.polypane.plist",
    "~/Library/Saved Application State/com.firstversionist.polypane.savedState",
  ]
end
