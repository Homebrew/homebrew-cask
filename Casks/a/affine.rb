cask "affine" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "a5a51754a0bf5e54afa49b5005ede6d394e15f8ccae64823355954e374cd3b52",
         intel: "6a5aac2184934c43e20ebd54ae0212a40d13462268b5dfcac9600dba59a3c011"

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
