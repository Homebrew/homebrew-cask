cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.26.0"
  sha256 arm:   "7d28fa0b5f089b8273f97e44c46522378b769acfb078281ad9fdba41bcc1b452",
         intel: "aa209c0146ea6c0a7c63bc558aa75d6b0d3cdb68fc1780bcfd0229bcf11ed0bc"

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
