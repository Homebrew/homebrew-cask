cask "masscode" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "4725728d6566f008f7f617f37aad4239ddd3adf83341d3ecaa4edb909dbddacb",
         intel: "4c81bb3ff20b7015b536694d1b27af0bf867c475033e8060bfdfc50e1ac6ab37"

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
