cask "latexdraw" do
  version "4.0.2"
  sha256 "2f74545c75fbd153f2b60e9a2ffb36a6c6bad35be401284be48a30c001d85bcb"

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
