cask "scummvm" do
  version "2.8.1"
  sha256 "eac0240eea51b6e18d5337a71a0d52cb7a62b99701b99ba3d93f932d76e0bd4a"

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
