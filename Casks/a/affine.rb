cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "7b12669217da27b957fea9144b5cdef1e25b1a00215a0c2789190d4590fb17b9",
         intel: "760fc3fdfa8333bddaf2c91bc148bf7ef5c984d3f3a8cb819dc2dc8553ba2092"

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
