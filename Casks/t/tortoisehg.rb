cask "tortoisehg" do
  version "6.9"
  sha256 "7197d6758042d27642f0a262866b4529e52e17838915609f2c180756d0eca719"

  url "https://www.mercurial-scm.org/release/tortoisehg/macos/TortoiseHg-#{version}-mac-x64-qt5.dmg",
      verified: "mercurial-scm.org/release/tortoisehg/"
  name "TortoiseHg"
  desc "Tools for the Mercurial distributed revision control system"
  homepage "https://tortoisehg.bitbucket.io/"

  livecheck do
    url "https://www.mercurial-scm.org/release/tortoisehg/macos/"
    regex(/TortoiseHg-(\d+(?:\.\d+)*)-mac-x64-qt5\.dmg/i)
  end

  app "TortoiseHg.app"

  zap trash: "~/.config/tortoisehg.org"

  caveats do
    requires_rosetta
  end
end
