cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "653c6b053552b9e9442128d7988bb0b1fd1e9987f606528bf35111c972cb559c",
         intel: "ef05f5ddd07c147c799d1de232736bab898d828790870de6224ab82ad4b31b33"

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-#{version}-stable-macos-#{arch}.zip",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
