cask "markedit" do
  version "1.15.0"
  sha256 "4f01ef61e4eb5daf994d051a28d0790846780ce6cf8b436966452325e32861fa"

  url "https://github.com/MarkEdit-app/MarkEdit/releases/download/v#{version}/MarkEdit-#{version}.dmg"
  name "markedit"
  desc "TextEdit, but dedicated to Markdown"
  homepage "https://github.com/MarkEdit-app/MarkEdit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MarkEdit.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.markedit",
    "~/Library/Application Scripts/app.cyan.markedit.preview-extension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl3",
    "~/Library/Containers/app.cyan.markedit",
    "~/Library/Containers/app.cyan.markedit.preview-extension",
    "~/Library/Saved Application State/app.cyan.markedit.savedState",
  ]
end
