cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.27.3"
  sha256 arm:   "bdeaa87ae8f200d63c738dfcdc3a8435fd8386e82cb28ef8b1ac5cc975207264",
         intel: "41ca92935673f2e94f994cbc13af6698c6276886bd5debe09ba19d703eb04090"

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
