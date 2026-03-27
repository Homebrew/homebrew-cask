cask "freeshow@beta" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0-beta.3"
  sha256 arm:   "71761325b222b774c4da8e3adec04ef953a036ff0979a7260e82eb077d1bec80",
         intel: "e7b2a8842468bb54b50de7b74110e39bc8cc9210f91dcfe7af636aa0e31bbfff"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
  end

  auto_updates true
  conflicts_with cask: "freeshow"
  depends_on macos: ">= :big_sur"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
