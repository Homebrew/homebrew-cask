cask "amie" do
  arch arm: "-arm64"

  version "251228.0.0"
  sha256 arm:   "011cd2e33115d00510be7426cce722de15a800e7a747d55a17af1ee1fafb37e7",
         intel: "9e363b67197cdbac5cf439bbae8a9daa94063ce083b8c06eda17d87c1f4fc0fa"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
