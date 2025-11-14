cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.25.4"
  sha256 arm:   "233af9555173f25054a5263e5ddb8fb8bb195af02e9c15bbf62c7d5972027edb",
         intel: "6b3a4a28b8a2f0cb8a03355d00bd3e91bd33e3a6558d6b9f167cb4f361b87987"

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
  depends_on macos: ">= :big_sur"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
