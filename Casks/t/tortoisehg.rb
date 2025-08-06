cask "tortoisehg" do
  version "7.0.1"
  sha256 "3d182c25ae5873d4f3886839e0768eb4dc84588f3a0f89bc5d61890b5e7a01b1"

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
