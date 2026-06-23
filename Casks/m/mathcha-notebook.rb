cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.460"
  sha256 arm:   "01f075e92c00d2aa0b4beaa19683e61485407f196ef8d24f9f0fa74003758532",
         intel: "d1067fa5169dd3a09f266b1dead4505c348aa204195a2db103aca0b900d35e10"

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
