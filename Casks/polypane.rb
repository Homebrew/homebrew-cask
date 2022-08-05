cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "10.0.0"

  if Hardware::CPU.intel?
    sha256 "c0885997a6b0181a68d563e323e880f2a04ca3b001fbaa2e13fb2b1e81c32fb3"
  else
    sha256 "81d4f3c1b042a05e60bcb0e8c1238b7ca04c372810460456f6b1f47714a55060"
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
