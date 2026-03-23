cask "paseo" do
  arch arm: "-arm64"

  version "0.1.32"
  sha256 arm:   "d7b1de5733ee33f61b748ead93cf8077ec91b117a3680024ca6f87db3007a89c",
         intel: "f8b5d48ab3e0efd3a3cb465ff47e9df8b947b3a1e906358b09517a7f9eeb3288"

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
