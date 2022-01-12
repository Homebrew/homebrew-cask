cask "sloth" do
  version "3.1,282"
  sha256 "de6d97f2c63107e209f52f10f74ebe329e3a8c86ac578c188a9e36b790ed5e52"

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version.csv.first}.zip"
  name "Sloth"
  desc "Displays all open files and sockets in use by all running processes"
  homepage "https://sveinbjorn.org/sloth"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/SlothAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Sloth.app"

  zap trash: [
    "~/Library/Caches/org.sveinbjorn.Sloth",
    "~/Library/Preferences/org.sveinbjorn.Sloth.plist",
    "~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState",
  ]
end
