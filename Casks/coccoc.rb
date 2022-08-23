cask "coccoc" do
  arch arm: "/arm64"

  version "104.0.5112.84,104.0.84"
  sha256 :no_check

  url "https://files-cdn.coccoc.com/browser/mac#{arch}/coccoc.dmg"
  name "Cốc Cốc"
  desc "Chromium-based web browser"
  homepage "https://coccoc.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "CocCoc.app"

  uninstall launchctl: "com.coccoc.CocCoc"

  zap trash: [
    "~/Library/Application Support/Coccoc",
    "~/Library/Caches/Coccoc",
    "~/Library/Caches/com.coccoc.Coccoc",
    "~/Library/Preferences/com.coccoc.Coccoc.plist",
    "~/Library/Saved Application State/com.coccoc.Coccoc.savedState",
  ]
end
