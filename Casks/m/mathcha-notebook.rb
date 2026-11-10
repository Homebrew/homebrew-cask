cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.465"
  sha256 arm:   "411f874f18fe627ac84b335593e1c2a317875e602556e7e708404e3b7bbc042f",
         intel: "ac5b218d584d5817c23fee6b63ab141dda24d7eedbf2965fe547449db28f19d0"

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
