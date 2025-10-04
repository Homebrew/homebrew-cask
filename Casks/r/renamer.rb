cask "renamer" do
  version "7.0.1"
  sha256 "c8885c4767de9f32407ab721575eee0a1708cd7887ff4bb44ec988c771b3badb"

  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Renamer"
  desc "Batch file renamer application"
  homepage "https://renamer.com/"

  livecheck do
    url "https://github.com/incbee/renamer-7-releases/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :sequoia"

  app "Renamer.app"

  zap trash: [
    "~/Library/Application Support/Renamer",
    "~/Library/Logs/Renamer.log",
    "~/Library/Preferences/com.incrediblebee.Renamer#{version.major}.plist",
  ]
end
