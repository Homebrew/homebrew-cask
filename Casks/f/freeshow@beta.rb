cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.8-beta.1"
  sha256 arm:   "a08e56ce98326c4251941869eef39871bc2be8454768d584c48f06d43cf31fd4",
         intel: "27cc75fde9f9fe3169e82a23f55b3f120940a8b08463b4d80460dae31265792c"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: :ventura

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
