cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.3.0"
  sha256 arm:   "d482e967f9b6403287b2ebe9e27cc1f298bc13dc3e2b75ca7ae85d7ac49f334f",
         intel: "e19d59778642ad0c7ddd6d8d4abff300562815e7019f0407da5872f04e534642"

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
