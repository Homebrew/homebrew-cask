cask "markedit" do
  version "1.33.0"
  sha256 "bdc66ff115387280d8c41ccf9f83d9ae3211d6d22d45d8fbd3e1b17d0f4ab5f3"

  url "https://github.com/MarkEdit-app/MarkEdit/releases/download/v#{version}/MarkEdit-#{version}.dmg"
  name "MarkEdit"
  desc "Markdown editor"
  homepage "https://github.com/MarkEdit-app/MarkEdit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "MarkEdit.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.markedit*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl*",
    "~/Library/Containers/app.cyan.markedit*",
    "~/Library/Saved Application State/app.cyan.markedit.savedState",
  ]
end
