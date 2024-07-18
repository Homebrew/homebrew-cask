cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.15.6"
  sha256 arm:   "fa1590b42f7a75d5c327814a023fd343e95d077b1d9c6b0635f25a791e5c7599",
         intel: "ebe4a0246ab2e28773cb12eb0e33574b4d7772d8abd13db01fdf679dbe593916"

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
  depends_on macos: ">= :catalina"

  app "AFFiNE.app"

  zap trash: [
    "~/Library/Application Support/AFFiNE",
    "~/Library/Logs/AFFiNE",
    "~/Library/Preferences/pro.affine.app.plist",
    "~/Library/Saved Application State/pro.affine.app.savedState",
  ]
end
