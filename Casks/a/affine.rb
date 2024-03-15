cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "a5fec5053b29c3cc9ab80bc63dfdd482aa5c4e889a4da3e1ce4477495dc9afb8",
         intel: "5ef5717cd603a074e6f0c4576e3be012ad2b70ec649f654ac2b32a9dd88bd645"

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
