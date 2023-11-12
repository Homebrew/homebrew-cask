cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.14.0"
  sha256 arm:   "400df099ec593ee49d87206f1cd9e7b3c18fc46e0f56bfe10cf32af24c35dc95",
         intel: "b3d986ee1e5c904900894feab3dcc1505435243d93b4118cd68efeb36600dac8"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download"
    regex(/href=.*?Codux[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :page_match
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Preferences/com.wixc3.wcs.plist",
    "~/Library/Saved Application State/com.wixc3.wcs.savedState",
  ]
end
