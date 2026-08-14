cask "amie" do
  arch arm: "-arm64"

  version "260814.0.0"
  sha256 arm:   "23b4600002f9b5948541189170567c490d98c5d841612c8be3063a0bd4d0dac8",
         intel: "e00e570d3f2407a63ae6a3d84750003681a0062a69f3ebe724f69598250e22ce"

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
