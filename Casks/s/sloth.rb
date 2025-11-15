cask "sloth" do
  version "3.5"
  sha256 "ef5e0e064ac5ce85d9ada7bb3ad22dace2bd4981a4920a7470f9d2673b8cdcb5"

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  name "Sloth"
  desc "Displays all open files and sockets in use by all running processes"
  homepage "https://sveinbjorn.org/sloth"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/SlothAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Sloth.app"

  zap trash: [
    "~/Library/Caches/org.sveinbjorn.Sloth",
    "~/Library/Preferences/org.sveinbjorn.Sloth.plist",
    "~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState",
  ]
end
