cask "masscode" do
  arch arm: "-arm64"

  version "5.0.0"
  sha256 arm:   "792083588fff26ddcd1decc6d91a41138599bfd043cb8bc58e58cc91c705a520",
         intel: "ee56ab4f356eae7d8c608c82db2c74144dde7733b11bbd730591aed5fe1a4717"

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
