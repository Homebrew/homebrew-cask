cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.37.2"
  sha256 arm:   "92e394c9968f630081ee6c2dcbdac90f5d4cb92d0a03f9bb2a95da615d70a685",
         intel: "8b484c6c3b70205c698401d4b39232bc926f3e8626207f7faf9efda29ffed139"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download"
    regex(/href=.*?Codux[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Preferences/com.wixc3.wcs.plist",
    "~/Library/Saved Application State/com.wixc3.wcs.savedState",
  ]
end
