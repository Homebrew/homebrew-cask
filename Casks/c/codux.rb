cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.42.0"
  sha256 arm:   "ddc8ca080956e8a27b82b85d6e3381447e3c975c9d22d0b04a1f004efe6a6909",
         intel: "15bf4ce82f2c0477abe7fe5c8172f0f684d7a7069e7f9461565893758f0ff092"

  url "https://github.com/wixplosives/codux-versions/releases/download/#{version}/Codux-#{version}.#{arch}.dmg",
      verified: "github.com/wixplosives/codux-versions/"
  name "Codux"
  desc "React IDE built to visually edit component styling and layouts"
  homepage "https://www.codux.com/"

  deprecate! date: "2025-10-25", because: :unmaintained

  depends_on macos: ">= :big_sur"

  app "Codux.app"

  zap trash: [
    "~/Library/Application Support/Codux",
    "~/Library/Preferences/com.wixc3.wcs.plist",
    "~/Library/Saved Application State/com.wixc3.wcs.savedState",
  ]
end
