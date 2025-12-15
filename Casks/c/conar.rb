cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "ea69b16ac16ea55dd85fe5aaf29d4872dbf84d42d69d15ea56d4270453fe2432",
         intel: "4c6b98e0d09684eedd787fe09c41d1d713fffdfc1b2872873c73c3cd0a341af0"

  url "https://github.com/wannabespace/conar/releases/download/v#{version}/Conar-Mac-#{arch}-#{version}-Installer.dmg",
      verified: "github.com/wannabespace/conar/"
  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Conar.app"

  zap trash: [
    "~/Library/Application Support/Conar",
    "~/Library/Logs/Conar",
    "~/Library/Preferences/com.wannabespace.conar.plist",
    "~/Library/Saved Application State/com.wannabespace.conar.savedState",
  ]
end
