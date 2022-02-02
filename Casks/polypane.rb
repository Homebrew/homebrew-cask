cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "8.0.0"

  if Hardware::CPU.intel?
    sha256 "5c8cfa59f24e9fc8e3c54b43a2fca62644fadc6a6b7fa34ebaa986ee8cc5babc"
  else
    sha256 "f6626a6777cdf0e0e7e34f30521ad54fadd6393f73fd3d04fe971ba3d8103f18"
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
