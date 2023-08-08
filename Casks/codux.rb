cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.8.0"
  sha256 arm:   "082814bdd1f75562ea2342f3130cd16a18a8a168f7ad9e639166b5ec436611bd",
         intel: "914442ad3011ba6eecc5a9d37a25528bf6a34deb9e248780d6e3016dd67b7373"

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
