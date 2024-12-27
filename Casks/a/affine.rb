cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "ad8f1993f21ffdf25cb4a5bd7446a4f1d8b3051b22b36f980c3465d1efda33fc",
         intel: "524c99c42fc9a5ba7d4fb2e91856949467ccbb8f8ecea8fb75c052836815bce5"

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
