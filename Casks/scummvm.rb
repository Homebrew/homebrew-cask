cask "scummvm" do
  version "2.7.0"
  sha256 "9c977ed6612733a46b2733e0cdb103dc39f4cd0c6c208defa19d13d6468a76bb"

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
