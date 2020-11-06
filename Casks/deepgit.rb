cask "deepgit" do
  version "4.0.2"
  sha256 "3c7bdfb9dc19ab35385f4b6e75dcc670ac0d43444f44cafc97eedc887cfabfda"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://syntevo.com/deepgit/download"
  name "DeepGit"
  homepage "https://www.syntevo.com/deepgit/"

  app "DeepGit.app"
end
