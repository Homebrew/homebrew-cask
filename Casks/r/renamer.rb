cask "renamer" do
  version "7.3.3"
  sha256 "0a831dd865b662e94b55a5408643942f9017f6fb5b1a7d6d569f402933c528ef"

  url "https://github.com/incbee/renamer-#{version.major}-releases/releases/download/v#{version}/Renamer-#{version}-universal-mac.zip"
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
