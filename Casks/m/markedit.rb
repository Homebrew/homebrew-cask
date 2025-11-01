cask "markedit" do
  version "1.27.4"
  sha256 "2ea439509ad6eb965b445330295a296cdcafffa65a3f74076f7f06a7e80f387a"

  url "https://github.com/MarkEdit-app/MarkEdit/releases/download/v#{version}/MarkEdit-#{version}.dmg"
  name "MarkEdit"
  desc "Markdown editor"
  homepage "https://github.com/MarkEdit-app/MarkEdit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "MarkEdit.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.markedit",
    "~/Library/Application Scripts/app.cyan.markedit.preview-extension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl*",
    "~/Library/Containers/app.cyan.markedit",
    "~/Library/Containers/app.cyan.markedit.preview-extension",
    "~/Library/Saved Application State/app.cyan.markedit.savedState",
  ]
end
