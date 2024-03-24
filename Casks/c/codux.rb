cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.23.1"
  sha256 arm:   "aa1547ed546802e10457f8440123fe57507bb69f43cfcafcca65ce50e8bf7fce",
         intel: "74e63d9ea26ed8172bd3fae600b875534fe93804fd23af5ca80c19487c5848ac"

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
