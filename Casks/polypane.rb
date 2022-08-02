cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "9.1.0"

  if Hardware::CPU.intel?
    sha256 "173cabda3cb5720c35def0df4ec8d06ff3638558f0cea419a1c8b805fd6398b4"
  else
    sha256 "57a0057d391eed94277bfb9ce1a4fafb5e1381ff04713cc4ace3ee82f9468dea"
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
