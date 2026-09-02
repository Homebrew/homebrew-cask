cask "markedit" do
  version "1.34.0"
  sha256 "e38962edcca263e31d947987212f25ecc25d85af7f848dcb0cc31587d0332b76"

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
