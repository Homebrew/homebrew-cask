cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.466"
  sha256 arm:   "8cb4630e42e310075a43f4b83ae42754b89dc328990a8eaaf7b8c4f0dffccd2d",
         intel: "e0f151d3adbab838d83e9a3118f17a647021a9bbd628d379848121ec34029fa0"

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
