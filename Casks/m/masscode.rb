cask "masscode" do
  arch arm: "-arm64"

  version "5.4.0"
  sha256 arm:   "f87301e4abf8d289632a5f6f8deff2dd88a1bb8d7ef688e8245168ea6aeeddc2",
         intel: "9d8cafb41191f403d7fcd47e36098a2738fb9ef77d3d24b05d5218b9a29bf62f"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
