cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.462"
  sha256 arm:   "5580e78ac33958bdab4beb3bba39e13221cc5fba29ad5bfb8232e16f65b58ad0",
         intel: "49b79adc0c29949e75fa39619a79f1fab8d578f2c6ce50b382eb53d39cd304bd"

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
