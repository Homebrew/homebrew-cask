cask "deskreen" do
  version "2.0.4"
  sha256 "43b9a49d0ff70211a88cfd23bf660dac9f3609063dde3ccf6d07f5307050e443"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-#{version}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Deskreen.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
