cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.2.18"
  sha256 arm:   "36e747be2cd253cff7c3008ab7dee6bdb18b57df6e8b790945a06f1138daaf88",
         intel: "7f9b3444e544ac33060a97c9a963ab56050387209fafb1692df530db2fa6d41e"

  url "https://hey.com/desktop/HEY-#{version}#{arch}-mac.zip"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey.com/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
