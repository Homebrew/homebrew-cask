cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.22.2"
  sha256 arm:   "072a9d80821bbddd0487813fb6d97aca5deb9a264317a7a4e6c84b63960ed2bb",
         intel: "0dbc2a7b188285729885086b51b2f9d576e6263e6146b3ea2312d413c78922bd"

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
