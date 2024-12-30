cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.19.2"
  sha256 arm:   "03f8b95293ee6d19a1c21ace18568e320ed50716f482be0aeb89aa509bcc811a",
         intel: "f977417f081c3ceacccdc7c8f4fd1aacc0b238e3ea56c923cad5b0a467787615"

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
