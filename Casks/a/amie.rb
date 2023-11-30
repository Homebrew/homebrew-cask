cask "amie" do
  arch arm: "-arm64"

  version "231115.0.0"
  sha256 arm:   "62fb2f9c30718b2299b0eff7432c1bfc2747e7c9c2dbf278f7a5266d4e0a954b",
         intel: "b1a5be6eb5633a008a657bf1016e77c12a35f090a7b37bf1142dde657555927a"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
