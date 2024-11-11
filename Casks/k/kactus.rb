cask "kactus" do
  version "0.3.35"
  sha256 "e264d004747c21e5332202c1f1337dddeb1f42d6a6c7fe00c3753031ea87b745"

  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip",
      verified: "github.com/kactus-io/kactus/"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"

  zap trash: [
    "~/Library/Application Support/Kactus",
    "~/Library/Caches/io.kactus.KactusClient",
    "~/Library/Caches/io.kactus.KactusClient.ShipIt",
    "~/Library/HTTPStorages/io.kactus.KactusClient",
    "~/Library/Logs/Kactus",
    "~/Library/Preferences/io.kactus.Kactus.plist",
    "~/Library/Saved Application State/io.kactus.Kactus.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
