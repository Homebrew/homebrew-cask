cask "masscode" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "cda488e95d579cf9f70cb3400ccd3fdd4d3470226747b2da38d404dc2b5bacc5",
         intel: "f0fee3d317d94a92a4cd90d59deca0300c75a9a76f681a521a0e150a6a8dadb1"

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
