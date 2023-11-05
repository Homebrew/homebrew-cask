cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.13.0"
  sha256 arm:   "62becb8c027367dd59382dc00abedebd781f61a3be1c89829e948cde726fdf79",
         intel: "68afa3ba2e7b6519fcdabc4170a0123b5c891916bb675a7dfb04ec87d8c0185c"

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
