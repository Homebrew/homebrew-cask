cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.464"
  sha256 arm:   "8fb755f1f63074d1c89d849d1a9857eb588127a49052bbb70d42bc57c36e3653",
         intel: "2172f94fc20f3a4acaab2756bc340bdcb5c85b6ea6ec60635a9cd9208bbb7527"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/mathcha.com.mathnotebook.sfl*",
    "~/Library/Application Support/Mathcha Notebook",
    "~/Library/Logs/Mathcha Notebook",
    "~/Library/Preferences/mathcha.com.mathnotebook.plist",
    "~/Library/Saved Application State/mathcha.com.mathnotebook.savedState",
  ]
end
