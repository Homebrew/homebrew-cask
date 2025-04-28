cask "amie" do
  arch arm: "-arm64"

  version "250428.0.1"
  sha256 arm:   "1d02714f7bb876029230a38164354154ab6727194b5533ddeae214cbc67dc1b9",
         intel: "a03c95f36039c70eabc3148f59531ff3dcabd6911ad5d49a13bfa7de43a84488"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
