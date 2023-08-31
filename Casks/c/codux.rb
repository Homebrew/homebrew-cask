cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.10.0"
  sha256 arm:   "2a039afcdea08e912f3469f642cfd867aea26e43ad7add2fdde5695c2658ba16",
         intel: "637238e980381d5e223bd59a89e80e3b7bb092460f08458d07ae685e61afd38f"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash:
             [
               "~/Library/Application Support/Codux",
               "~/Library/Preferences/com.wixc3.wcs.plist",
               "~/Library/Saved Application State/com.wixc3.wcs.savedState",
             ]
end
