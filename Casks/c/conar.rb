cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "5f28685dcb64793848c730aaf835d6af3f142e53547078492f447860062ba921",
         intel: "6dc0405fed39e6ad2c99fee6ab0ee1387b14a31aea128972618d3d85d3a8654c"

  url "https://github.com/wannabespace/conar/releases/download/v#{version}/Conar-Mac-#{arch}-#{version}-Installer.dmg",
      verified: "github.com/wannabespace/conar/"
  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Conar.app"

  zap trash: [
    "~/Library/Application Support/Conar",
    "~/Library/Logs/Conar",
    "~/Library/Preferences/com.wannabespace.conar.plist",
    "~/Library/Saved Application State/com.wannabespace.conar.savedState",
  ]
end
