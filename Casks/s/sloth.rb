cask "sloth" do
  version "3.3"
  sha256 "2c668befe36aa0fa9765d616abdc7ec8d1191656599ac670faa7042c2e2b7636"

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  name "Sloth"
  desc "Displays all open files and sockets in use by all running processes"
  homepage "https://sveinbjorn.org/sloth"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/SlothAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Sloth.app"

  zap trash: [
    "~/Library/Caches/org.sveinbjorn.Sloth",
    "~/Library/Preferences/org.sveinbjorn.Sloth.plist",
    "~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState",
  ]
end
