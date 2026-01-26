cask "freetex" do
  version "1.0.0"
  sha256 "072bf0a4db144fb2a44c0fbaffe9ef7368dcb93d42aa21de10f5119d53239444"

  url "https://github.com/zstar1003/FreeTex/releases/download/v#{version}/FreeTex-Installer-#{version}.dmg",
      verified: "github.com/zstar1003/FreeTex/"
  name "FreeTex"
  desc "Free intelligent formula recognition software"
  homepage "https://xdxsb.top/FreeTex"

  depends_on macos: ">= :big_sur"

  app "FreeTex.app"

  zap trash: [
    "~/Library/Application Support/FreeTex",
    "~/Library/Caches/FreeTex",
    "~/Library/Preferences/com.freetex.app.plist",
    "~/Library/Saved Application State/com.freetex.app.savedState",
  ]
end
