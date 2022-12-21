cask "coccoc" do
  arch arm: "/arm64"

  version "107.0.5304.132,107.0.132"
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
