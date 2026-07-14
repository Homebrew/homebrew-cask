cask "amie" do
  arch arm: "-arm64"

  version "260713.0.0"
  sha256 arm:   "abb8931fe348382d0356250e0826f1de7fa9956c22f81bcea0ce3e79f2bd1d46",
         intel: "a2b9586db11c88d3b809512c17509dddca11c9d6789eded0ecde5b253bc17358"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
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
