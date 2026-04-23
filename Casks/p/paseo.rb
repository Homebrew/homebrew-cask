cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.1.61"
  sha256 arm:   "79db7533a958727ec7a018ad80b9e0b4654c829185087e28d88373101c5edae3",
         intel: "6fe33b7646cf01a965ed77d1924ee8c8c469e8de29f7b53fba63a586c77e9c9e"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}-#{arch}.dmg",
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
  binary "#{appdir}/Paseo.app/Contents/Resources/bin/paseo"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
