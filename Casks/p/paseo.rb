cask "paseo" do
  arch arm: "-arm64"

  version "0.1.34"
  sha256 arm:   "84613910a360f00aa5b2de321365b53458ebb334051fba4dfedd230e1265831a",
         intel: "a9df6ffd293bc4c15f760364921092017c83efa38e5f0ca1d9bbdb70b8f19eb7"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "Paseo.app"
  binary "#{appdir}/Paseo.app/Contents/MacOS/Paseo", target: "paseo"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
