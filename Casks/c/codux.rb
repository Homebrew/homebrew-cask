cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.39.1"
  sha256 arm:   "2438084843281dd9e38643d1da1bd96537487fca9d62953f91a780d6f8177930",
         intel: "edc98b32c3e665dcc4de0ce7bf0fc4a1c18777176a26564cdeb4ebd2aad677e0"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  livecheck do
    url "https://www.codux.com/download"
    regex(/href=.*?Codux[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Preferences/com.wixc3.wcs.plist",
    "~/Library/Saved Application State/com.wixc3.wcs.savedState",
  ]
end
