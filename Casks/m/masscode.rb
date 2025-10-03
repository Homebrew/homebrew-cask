cask "masscode" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "bdaeb09f4a0d16f5a2a9ea363d86a3fa76ea0139c060be9e8274d04ac10c0c78",
         intel: "61593547b1d974d1e6934bfe295695086ff7af643c799836f781a944117aaa5d"

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
