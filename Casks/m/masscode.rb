cask "masscode" do
  arch arm: "-arm64"

  version "4.2.1"
  sha256 arm:   "45b5abc58515eaa668c5b1650b4a8a67d4c01c5031a414bb1ecd70851fac3750",
         intel: "38fb4f2a8c90dcc7d1c8f3bec03169d2acc03cf6d32816158e9b8f5af245d67d"

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
