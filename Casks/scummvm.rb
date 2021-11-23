cask "scummvm" do
  version "2.5.0"
  sha256 "a0845f146681347fdbf907d77fd473295c73e9c9373a6ecb339021bb1abb51ee"

  url "https://downloads.scummvm.org/frs/scummvm/#{version}/scummvm-#{version}-macosx.dmg"
  name "ScummVM"
  desc "Run classic graphical adventure and role-playing games"
  homepage "https://www.scummvm.org/"

  livecheck do
    url "https://www.scummvm.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/scummvm-(\d+(?:\.\d+)*)-macosx\.dmg}i)
  end

  app "ScummVM.app"

  zap trash: [
    "~/Documents/ScummVM Savegames",
    "~/Library/Caches/org.scummvm.scummvm",
    "~/Library/Logs/scummvm.log",
    "~/Library/Preferences/ScummVM Preferences",
    "~/Library/Preferences/org.scummvm.scummvm.plist",
    "~/Library/Saved Application State/org.scummvm.scummvm.savedState",
  ]
end
