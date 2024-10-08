cask "amie" do
  arch arm: "-arm64"

  version "241008.0.0"
  sha256 arm:   "a3d3af41d1109e7a0b93580df950e8852d968cd4c544f65b16c33ffcc4f8dcf1",
         intel: "88694851c1c693cc092ba1a5d151e0f9a336e3979e889de5aeb65c74e87adedf"

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
