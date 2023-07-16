cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.6.1"
  sha256 arm:   "a95b56312a4f137ffc4817ca54fbcf43d1ef74244297a6c101c92df45c31ac77",
         intel: "0d3aa867fe3ab340bafee2d6c12e8a93c8d4718a897e46eefaa18d8a714ea7bd"

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
