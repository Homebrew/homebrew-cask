cask "conar" do
  version "0.24.0"

  on_arm do
    sha256 "5f28685dcb64793848c730aaf835d6af3f142e53547078492f447860062ba921"
    url "https://github.com/wannabespace/conar/releases/download/v#{version}/Conar-Mac-arm64-#{version}-Installer.dmg",
        verified: "github.com/wannabespace/conar/"
  end

  on_intel do
    sha256 "6dc0405fed39e6ad2c99fee6ab0ee1387b14a31aea128972618d3d85d3a8654c"
    url "https://github.com/wannabespace/conar/releases/download/v#{version}/Conar-Mac-x64-#{version}-Installer.dmg",
        verified: "github.com/wannabespace/conar/"
  end

  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app"

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
