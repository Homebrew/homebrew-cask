cask "latexdraw" do
  version "4.0.1"
  sha256 "f1daf6accb538cb7c8fc465a4a65d74dfa0e97b23a0ed8fecc60f4fe8cb7f81a"

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
