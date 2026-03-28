cask "scummvm-app" do
  version "2026.2.0"
  sha256 "35b540bab76b44273e11643f4364baf933899099abc1e4b8e89b43300a3e94a7"

  url "https://downloads.scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name "ScummVM"
  desc "Run classic graphical adventure and role-playing games"
  homepage "https://www.scummvm.org/"

  livecheck do
    url "https://www.scummvm.org/appcasts/macosx/release.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ScummVM.app"

  zap trash: [
    "~/Documents/ScummVM Savegames",
    "~/Library/Caches/org.scummvm.scummvm",
    "~/Library/Logs/scummvm.log",
    "~/Library/Preferences/org.scummvm.scummvm.plist",
    "~/Library/Preferences/ScummVM Preferences",
    "~/Library/Saved Application State/org.scummvm.scummvm.savedState",
  ]
end
