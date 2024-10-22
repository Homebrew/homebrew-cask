cask "amie" do
  arch arm: "-arm64"

  version "241022.1.3"
  sha256 arm:   "65bb3aec1f40f47fa5f0f4accb8e8786c31a35ee6bc3a7b4a93774cdcffa2d8f",
         intel: "f6672f5446ea5cb6dd4f8478c1a9359372b6f65cfdb5ad6d920c6f2837cfa5c0"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
