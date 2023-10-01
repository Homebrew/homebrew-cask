cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.12.0"
  sha256 arm:   "2a6913e99c88f357e246fe9932d84c1fe7f69b7af340e94d33eb0810568af752",
         intel: "bc68a270f2f5a7aa6e2f6179c96b9c4bda907058a6feaf692efbded1310edcd8"

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
