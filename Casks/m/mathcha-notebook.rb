cask "mathcha-notebook" do
  arch arm: "-arm64"

  version "1.0.471"
  sha256 arm:   "cd9d6386aae471068fd0c92e1e3616b8a421248aea7227734c70837bf83c4788",
         intel: "d2799e33e8055a3f2118987270f54f7f32fbbcb40d431fbedd0be5fcbb06d13c"

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
