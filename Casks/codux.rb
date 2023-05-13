cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.2.1"
  sha256 arm:   "d50a4e9a078e6e2908e9117806c781fce5cdce7d3e650dbf2f87f8d346dd344a",
         intel: "49cf93f25733cafeb5557547dabf1d69ff10d6c55066a6920e8bdd5430bfe067"

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
