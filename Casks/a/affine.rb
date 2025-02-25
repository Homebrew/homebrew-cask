cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.20.1"
  sha256 arm:   "0543a53a26f920e74c35f8047a587db8fb1f75d234f11e8b67eb2bfc9953fa25",
         intel: "c3814e53371f6db7c3b2a9dbb2a90045152aecfd9a807953a86542d0973a5b99"

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
