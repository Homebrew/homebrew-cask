cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.25.0"
  sha256 arm:   "8edc326a031783f9328569a8781f0cae462d4da4326c932a6a6be24c1707820c",
         intel: "a8b4cf432468e7466d94a5f9ed38ba66e958f7f88fd23c2c412e41f15425dab6"

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
