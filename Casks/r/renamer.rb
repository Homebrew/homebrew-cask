cask "renamer" do
  version "7.3.1"
  sha256 "b1927d760dc3c436d28238ddaff170ec87906b6b2b738463faf2b85d32ed1c30"

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
