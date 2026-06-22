cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.459"
  sha256 arm:   "1c4cb8cc4b9e51cee0b2fa0e9a4cc659cdc907317f13fd1b4a5d441d37b14018",
         intel: "2cbd2b2fa20a58db1fcb8bfda27bc1afb527056ec7c88d0bc8c7b0bba6b9f559"

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
