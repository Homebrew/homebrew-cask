cask "masscode" do
  arch arm: "-arm64"

  version "4.2.2"
  sha256 arm:   "bde1f9302d2f4d91f6e2d85ed4e2d7e615f90b5c6974964f35b9f1dedc5aec62",
         intel: "5e9a064ce2b20f3d28e7aa466ffcf49370f6ef0de5975248b1085f05278afd67"

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
