cask "scratch" do
  version "3.18.1"
  sha256 "5c447f3d88feeb193cb607a81eec585c74226c83b824f62d57524b33aabd4c44"

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.scratch.mit.edu/desktop/Scratch.dmg"
  name "Scratch"
  desc "Programs interactive stories, games, and animations"
  homepage "https://scratch.mit.edu/download"

  depends_on macos: ">= :high_sierra"

  app "Scratch #{version.major}.app"
end
