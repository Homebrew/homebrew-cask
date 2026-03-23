cask "paseo" do
  arch arm: "-arm64"

  version "0.1.33"
  sha256 arm:   "fcff5924801b055f4d27128c3eb21554186ce4739f2cbae02479904fe96a09c4",
         intel: "e87a44cc01406377e60e11d00348153335462ff0456450537c23a5e80fa38309"

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
