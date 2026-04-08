cask "renamer" do
  version "7.2.0"
  sha256 "c9966963fa0e23ae7398ca79b8d6deb965715e5a34c0de3b1bbd9493777be917"

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
