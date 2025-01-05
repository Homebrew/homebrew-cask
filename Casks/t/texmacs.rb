cask "texmacs" do
  arch arm: "-arm"

  version "2.1.4"
  sha256 arm:   "71bd118626d78adaaeeb06bbe083b5e2702a5b1db433531b93d3d2211d229171",
         intel: "ac5127eb5a2fa4ec32dfae403e96e9223c6fd227b115626b60925944a3cc2257"

  url "https://ftp.texmacs.org/TeXmacs/tmftp/macos/TeXmacs-#{version}#{arch}.dmg"
  name "GNU TeXmacs"
  desc "Scientific editing platform"
  homepage "https://www.texmacs.org/"

  livecheck do
    url "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "TeXmacs.app"

  zap trash: [
    "~/.TeXmacs",
    "~/Library/Preferences/org.texmacs.TeXmacs.plist",
    "~/Library/Saved Application State/org.texmacs.TeXmacs.savedState",
  ]
end
