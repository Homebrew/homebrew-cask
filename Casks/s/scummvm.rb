cask "scummvm" do
  version "2.9.1"
  sha256 "ab273a2986c039bfd255ce905758e1533eabf72d10cfc6f06b516ff005ff4943"

  url "https://downloads.scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name "ScummVM"
  desc "Run classic graphical adventure and role-playing games"
  homepage "https://www.scummvm.org/"

  livecheck do
    url "https://www.scummvm.org/appcasts/macosx/release.xml"
    strategy :sparkle
  end

  auto_updates true

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
