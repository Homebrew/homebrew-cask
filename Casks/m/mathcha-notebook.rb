cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.453"
  sha256 arm:   "60f16776dcd7d52e1743c5921a6ba9ead446a967595d16aaeb4560581f2c17c6",
         intel: "2e935338aa0d40e23ed30a8dcaa7ea1a992ac0d21552697b828ef2e88f88a5f7"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}#{arch}-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
