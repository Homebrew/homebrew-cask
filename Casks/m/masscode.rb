cask "masscode" do
  arch arm: "-arm64"

  version "4.0.1"
  sha256 arm:   "48a1c9bf94db861b4259f8a0e49914545a21808561e561f5a4498551fc7fc5be",
         intel: "a8234a6ae12ec7047cc69c3515a012d2a10ebd4ab3e0527eb15d49dc80b630b1"

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
