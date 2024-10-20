cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.36.1"
  sha256 arm:   "7c55d95c46fe4e17fb556297e0335bcd16b636a717ae1a5da20ce6a106b011b8",
         intel: "b1fa6c3797367a5eb95edc51f8b5627e1a6eacebfa8fd02cbd3f29e1d85f1a06"

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
