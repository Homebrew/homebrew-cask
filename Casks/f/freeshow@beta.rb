cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.8-beta.6"
  sha256 arm:   "4f256e5fd59ad2bfe251397c9b904a98595b9c988a0630cebb61cadd057ef90a",
         intel: "41cf75f2def94954e81280f63bcd9b43ffc50ca55b3d932c6d47492244b824e6"

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
