cask "raiderio" do
  version "4.9.1"
  sha256 "3f3345ac0261383c83c25d74e7454f7e98a947bfa7f9ddb45f7d1cc042ec094a"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "Raider.io Client"
  desc "World of Warcraft client to track Mythic+ and Raid Progression"
  homepage "https://raider.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "RaiderIO.app"

  zap trash: [
    "~/Library/Application Support/RaiderIO",
    "~/Library/Logs/RaiderIO",
  ]
end
