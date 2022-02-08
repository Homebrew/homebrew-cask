cask "sloth" do
  version "3.2,300"
  sha256 "f3fc7c23bebd57c906c6cb43b975d468cb46be0d379f6be1acabe66a5b52212a"

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
