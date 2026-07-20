cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "8be8375f09455ffb4100d0678e8f282c44584e2225683c67647e4a5e37af28a6",
         intel: "9ebbc148a83465d06f70efa27b76093a498727a200692a75232b1098efd8762a"

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
