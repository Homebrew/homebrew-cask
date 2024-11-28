cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.18.2"
  sha256 arm:   "bc3791fc8c0db97bd52ba933aa665a6133bdcadcc0807b6ee87c14b15a7aad2a",
         intel: "c1b2705c4d0d1a34949393b044153efb9d63e089fbf608c56736ef49c947d88f"

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
