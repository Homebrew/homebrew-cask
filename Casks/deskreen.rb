cask "deskreen" do
  version "1.0.5"
  sha256 "64d35ed38f28317d08215c6c70a91834629b282870dae2043cf75a3c163f71a3"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-#{version}.dmg",
      verified: "https://github.com/pavlobu/deskreen/"
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
end
