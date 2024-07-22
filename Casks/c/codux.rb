cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.31.0"
  sha256 arm:   "3c6a400ffc06ea9b7631918a25cf2fecdd6727b059e5edb69ce0c87e0f8816bc",
         intel: "c4d90d9cc9035a456125200d5f1d0a9df35dac04e9890f6d433b9eedb3df4780"

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
