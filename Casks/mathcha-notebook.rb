cask "mathcha-notebook" do
  version "1.0.423"
  sha256 "75b2431e5178fff9382ebc68027d8d7334bf340a75629d562b97f80d06f611f0"

  url "https://notebook-downloads.mathcha.io/public/Mathcha%20Notebook-#{version}-mac.zip"
  name "Mathcha Notebook"
  desc "Mathematics editor"
  homepage "https://www.mathcha.io/"

  livecheck do
    url "https://notebook-downloads.mathcha.io/public/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Mathcha Notebook.app"

  zap trash: [
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
