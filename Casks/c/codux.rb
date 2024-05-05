cask "codux" do
  arch arm: "arm64", intel: "x64"

  version "15.25.1"
  sha256 arm:   "7e3473cd05ffbab1b5410ef0c7ec120b5439ab5e2b210f2631269703f50c585a",
         intel: "0100d562847c6c24dcfbd7c01d8307d55bd3523475f7c0235692616f02c6a652"

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
