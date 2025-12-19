cask "masscode" do
  arch arm: "-arm64"

  version "4.4.0"
  sha256 arm:   "8b74cd2f997fda7c6a1a69105c9b503ee2da3db91d9c0a4cfd121b9ac98be9fb",
         intel: "c4e5f8586d58528261dd0b8bddfb1ca5af0754d89e19fde1bf876fe679184389"

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

  depends_on macos: ">= :big_sur"

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
