cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.2.8"
  sha256 arm:   "6b8d96e86fdd64387551983142a0ce252479cd7efd96cd184ea508c972271865",
         intel: "0b772ace4c1011042395d79cabba68c223914723d57ab2f4889b1a4f6860dd6b"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
