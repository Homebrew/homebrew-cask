cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.29.1"
  sha256 arm:   "46d0e4057aee058495030d8bbd1fe81b616978ac2aff2f20fa8826bf2f2106c1",
         intel: "107bacc689cae83ec47a1e8a14a989e11819a3573f4cab61dab8ab585d3a46f1"

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
