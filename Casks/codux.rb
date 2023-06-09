cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.4.3"
  sha256 arm:   "818eba9c87d9409b19b7e4ab468db4cbc21a30692d7c6d8f5467ef0aace43ba7",
         intel: "756d04b242321411f40737fb171e68af99e7d8cf61af058a55963850273062af"

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
