cask "tortoisehg" do
  version "6.5.1"
  sha256 "eadc6f3b3e55af5d229b362aa973f1d7710a06df2f600ed6f6a2f86692933e79"

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
end
