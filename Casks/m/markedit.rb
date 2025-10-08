cask "markedit" do
  version "1.27.1"
  sha256 "9761a45d7e82dcec08b5d00ff0e8aa5bc49de15468fdeda0e6136bafff359c67"

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
