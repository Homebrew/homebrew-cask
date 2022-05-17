cask "polypane" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "9.0.0"

  if Hardware::CPU.intel?
    sha256 "2bb804d75e1eff54ed1db22bff0d5d238415f3985c0d5d75a82d73302e237e24"
  else
    sha256 "9601b0c7da91b01de50b9ccb1c3d9b5e4f6b9e1a8972e132c94f8c478e70f179"
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
