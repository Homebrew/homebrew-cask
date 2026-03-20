cask "renamer" do
  version "7.1.10"
  sha256 "cf9b2c346b95665584fa434470cabb93c9d1175e52ad69b9228446ec96b14bdb"

  url "https://github.com/incbee/renamer-#{version.major}-releases/releases/download/v#{version}/Renamer-#{version}-universal-mac.zip",
      verified: "github.com/incbee/renamer-#{version.major}-releases/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://github.com/incbee/renamer-#{version.major}-releases/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :sequoia"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/HTTPStorages/com.incrediblebee.Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
