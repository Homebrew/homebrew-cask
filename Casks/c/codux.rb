cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.9.0"
  sha256 arm:   "48bc0bafcb706ae225348577980873af4574dff8818dac47213508ee1694595d",
         intel: "bb33bc54913972c44d3877596f35768c5f15cfe2290abcb8760527be60ce9fa4"

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
