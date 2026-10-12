cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.6.6"
  sha256 arm:   "b73c756bf065ff6051c768d0d423356e715fb7e1ced405e048b20861d28e6f9c",
         intel: "2bc63558c9ea217a55101394b047866ec6f4a477d837d6195ce55dba4aacf117"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "freeshow@beta"
  depends_on :macos

  app "FreeShow.app"

  uninstall quit: "app.freeshow"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.freeshow.sfl*",
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
