cask "amie" do
  arch arm: "-arm64"

  version "240111.0.0"
  sha256 arm:   "f229e88e7fac7b74095eaf72df26f615dbf3d7e5be765f560f537d0e375ed7dd",
         intel: "028226fe246d34e206715fcaa6121578e2d62c5838e9e9e95a018aa238d9aab0"

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
