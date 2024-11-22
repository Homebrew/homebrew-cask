cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.37.3"
  sha256 arm:   "49d1e1b53cdbf535d97874897722bbccdde1065712c4a593a73fbd7f0455c2bd",
         intel: "6530932ac866f0ff2adae0545686238004e153e1c5b60facf8bbc46b5d4c141c"

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
