cask "markedit" do
  version "1.33.1"
  sha256 "e915b8c4b8d624a3e2258a9531c3a2d2a65f0829c2d62e6db13d306ea3984467"

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
