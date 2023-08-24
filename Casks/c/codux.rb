cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.9.1"
  sha256 arm:   "967f1bb91e852e70437bba4604fee1105e08e776cb8d734ee96de578d731f7af",
         intel: "19473c93baf603ec75465fc8f111e90b868f70aeeaf762f4fc2163988d8a2529"

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
