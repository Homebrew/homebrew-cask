cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.472"
  sha256 arm:   "3ca7bab69a32ae57f12c92a17c0cdbc98ec0a22939912e0ae257725bdd9d8966",
         intel: "55983968e7c4cf33fd1bc2b9ac55071319a1ebb739ad297dd0ced3dc8193b0ad"

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

  uninstall quit: "mathcha.com.mathnotebook"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/mathcha.com.mathnotebook.sfl*",
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
