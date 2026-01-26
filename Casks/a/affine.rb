cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.25.7"
  sha256 arm:   "150cbdb65dc1ead9b2aa1569a3a6b1754c7f938bdba62f37e088018eedfffa29",
         intel: "a9390c7c2cab8c72e64a3be503254007a2710bbc057315d5624040f3a0e27d67"

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
