cask "latexdraw" do
  version "4.0.3"
  sha256 "7a21014c60d1d75fc8efe8c0d3ba8e827d2d09d29daeda492aff5d7cbc4f257c"

  # downloads.sourceforge.net/latexdraw/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/latexdraw/LaTeXDraw-#{version}.dmg"
  appcast "https://github.com/latexdraw/latexdraw/releases.atom"
  name "LaTexDraw"
  desc "Drawing editor for creating LaTeX PSTricks code"
  homepage "https://latexdraw.sourceforge.io/"

  app "LaTeXDraw.app"

  zap trash: [
    "~/.latexdraw",
    "~/Library/Preferences/latexdraw.plist",
    "~/Library/Saved Application State/latexdraw.savedState",
  ]
end
