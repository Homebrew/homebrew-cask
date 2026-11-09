cask "markedit" do
  version "1.37.1"
  sha256 "49549d9c074cf3a85b3fd281e76df0dfe65d4b575596cb4379fbba27c920d0a3"

  url "https://github.com/MarkEdit-app/MarkEdit/releases/download/v#{version}/MarkEdit-#{version}.dmg"
  name "MarkEdit"
  desc "Markdown editor"
  homepage "https://github.com/MarkEdit-app/MarkEdit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "MarkEdit.app"

  zap trash: [
    "~/Library/Application Scripts/app.cyan.markedit*",
    "~/Library/Application Scripts/group.app.cyan.markedit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl*",
    "~/Library/Containers/app.cyan.markedit*",
    "~/Library/Group Containers/group.app.cyan.markedit",
    "~/Library/Saved Application State/app.cyan.markedit.savedState",
  ]
end
