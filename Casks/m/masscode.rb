cask "masscode" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "9b26769c02be0b00133e0349bdc6df32c4efefe50aeb2c7325cb52874064bbbd",
         intel: "f2e68b8a62b669e513013fb2b8a1b543c7520850ae996a631d3943e33327c8f1"

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
