cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.3.1"
  sha256 arm:   "d31af2124b3b0476ba34da85e00f594cff632eb5963411c4ed8d9f37f26e3b42",
         intel: "e1d423319e5812d1988ad4d699e1cee583aa21e1bcaefdf43aca0b0ff8c1b3df"

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
