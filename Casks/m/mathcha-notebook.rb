cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.461"
  sha256 arm:   "34d552ac8076a5abaebc05b6b171ae95f0be285deb33ad94615ffe35437b9581",
         intel: "fb5b8763829a755ad6623a12bcea0e4fce1beca9c29d9b8f984addd128d22c6a"

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
