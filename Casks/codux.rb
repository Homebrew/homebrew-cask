cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.7.2"
  sha256 arm:   "af0d2014a6ea816bc7216a0458688e00e932a784c5fd9051d9936acce4701eac",
         intel: "d75bd65a8fbde87eb23c7d90972f17fe6de779b0d228f82a7d4ee27a83628ac1"

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
