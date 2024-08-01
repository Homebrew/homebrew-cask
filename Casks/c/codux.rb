cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.32.0"
  sha256 arm:   "d83aee772df5d562cd3be6e7d0d732a8b245d472fe8f1ff53e56802d42e6195e",
         intel: "b4e25f57f7d4a2f1b79579ca34c9599a34644ebf11b2730d2bdb77d370d7903a"

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
