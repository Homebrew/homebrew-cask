cask "deepgit" do
  version "4.1"
  sha256 "2190658fba01094093ca1e2b51fd0004821dc1a2f27a992b12b53890a37aac4e"

  url "https://www.syntevo.com/downloads/deepgit/deepgit-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://syntevo.com/deepgit/download"
  name "DeepGit"
  homepage "https://www.syntevo.com/deepgit/"

  app "DeepGit.app"
end
