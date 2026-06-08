cask "masscode" do
  arch arm: "-arm64"

  version "5.5.0"
  sha256 arm:   "a135aab85b0dd03d450cfd352d5e50c1ce17b9fd7d1b7143a219f0e33d5483df",
         intel: "5a1eb74d7900b157487dd7242686ca5d4a2d86e1cd6d7c77b8297a3344c39113"

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

  depends_on macos: :big_sur

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
