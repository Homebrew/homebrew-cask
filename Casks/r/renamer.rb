cask "renamer" do
  version "7.2.2"
  sha256 "430435770d22ee1c937f2ffaab12d4f7fb9070b1a9fac358e4a4ec6af5cc3ee8"

  url "https://github.com/incbee/renamer-#{version.major}-releases/releases/download/v#{version}/Renamer-#{version}-universal-mac.zip",
      verified: "github.com/incbee/renamer-#{version.major}-releases/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://github.com/incbee/renamer-#{version.major}-releases/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :sequoia

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/HTTPStorages/com.incrediblebee.Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
