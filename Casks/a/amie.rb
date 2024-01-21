cask "amie" do
  arch arm: "-arm64"

  version "240121.0.0"
  sha256 arm:   "7f4d343492baa85bea4bee590d5f6c71965f80848b5d6407d6c8f957e4c1925e",
         intel: "834f2776f0ade81f7a5f30776df724685500053b1211b34e8d067ef25ab7af87"

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
