cask "scummvm" do
  version "2.8.0"
  sha256 "bd74ccdcf918347f430ea7a121b6cd78697eed8549c9d239452dc163e91c7ad0"

  url "https://downloads.scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name "ScummVM"
  desc "Run classic graphical adventure and role-playing games"
  homepage "https://www.scummvm.org/"

  livecheck do
    url "https://www.scummvm.org/downloads/"
    regex(%r{href=.*?/scummvm[._-]v?(\d+(?:\.\d+)+)[._-]macosx\.dmg}i)
  end

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
