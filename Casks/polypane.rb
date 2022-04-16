cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "8.1.1"

  if Hardware::CPU.intel?
    sha256 "8dc6f5db2fe6370e396b095e10a506f382e238894963df3cedc6f5542f6145e5"
  else
    sha256 "981ff3d222ca59c2b0d1a565ba146832fc0b912d54082f1dab69a1948f681954"
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
