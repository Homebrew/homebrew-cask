cask "freetex" do
  version "1.0.0"
  sha256 "20f784bbfee37ba75d6a7a40275ec09babf064a73e62f30dac6165db4d2d597b"

  url "https://github.com/zstar1003/FreeTex/releases/download/v#{version}/FreeTex-Installer-#{version}.dmg"
  name "FreeTex"
  desc "Free intelligent formula recognition software"
  homepage "https://xdxsb.top/FreeTex"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FreeTex.app"

  zap trash: [
    "~/Library/Application Support/FreeTex",
    "~/Library/Caches/FreeTex",
    "~/Library/Preferences/com.freetex.app.plist",
    "~/Library/Saved Application State/com.freetex.app.savedState",
  ]
end
