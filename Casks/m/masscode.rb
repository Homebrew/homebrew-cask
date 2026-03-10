cask "masscode" do
  arch arm: "-arm64"

  version "4.7.1"
  sha256 arm:   "0f03ad90daa6f7f8cc7b65f2b1911744fe347d51db46893b9ec223f81ae59780",
         intel: "9bdba1063214414810ae4b014d1aba11a7e465bc2dc69829b20eb118bb28319f"

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
