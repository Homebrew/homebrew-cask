cask "raiderio" do
  version "6.0.4"
  sha256 "793fbd3930be74b11ad06f0aae6bfb0adf6319ab122037d23763519fcd3682c4"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg"
  name "Raider.io Client"
  desc "World of Warcraft client to track Mythic+ and Raid Progression"
  homepage "https://raider.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "RaiderIO.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.raider.client.sfl*",
    "~/Library/Application Support/RaiderIO",
    "~/Library/Logs/RaiderIO",
    "~/Library/Preferences/io.raider.client.plist",
  ]
end
