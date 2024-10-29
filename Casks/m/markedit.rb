cask "markedit" do
  version "1.20.3"
  sha256 "01481346f1e9388b2180fc24cd469cd41ee76c5d760ad4b99bbf8c8459e9225a"

  url "https://github.com/MarkEdit-app/MarkEdit/releases/download/v#{version}/MarkEdit-#{version}.dmg"
  name "MarkEdit"
  desc "Markdown editor"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl*",
    "~/Library/Containers/app.cyan.markedit",
    "~/Library/Containers/app.cyan.markedit.preview-extension",
    "~/Library/Saved Application State/app.cyan.markedit.savedState",
  ]
end
