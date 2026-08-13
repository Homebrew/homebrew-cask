cask "amie" do
  arch arm: "-arm64"

  version "260812.0.0"
  sha256 arm:   "84576e8dac9cb59a288048a05dff6b4e2f0c5152b9e22db5158657b512a8d541",
         intel: "b4cac66b3385daf977dd540b16be7a4bac207e912263967a2fc04f00fa4a507d"

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
