cask "amie" do
  arch arm: "-arm64"

  version "240702.0.1"
  sha256 arm:   "ad7b55315237b70648b12aedbb781ecca81795be3b3a7af514de6c92af9c8b5d",
         intel: "36b7da349d05dcceaaa22056a2ef505053c8bba3c421b27bc64a4b1c7caa5a26"

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
