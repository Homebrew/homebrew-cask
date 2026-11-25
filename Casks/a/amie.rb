cask "amie" do
  arch arm: "-arm64"

  version "260909.0.0"
  sha256 arm:   "9b604445e61d707ecd7d4d1d030a747c4a3338862e8269fcce2d42ccf04fe018",
         intel: "b28a91edaea4130a1eddddab0ed5440f7f635d71cc5ef3f3454eec316976b2b0"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: :monterey

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
