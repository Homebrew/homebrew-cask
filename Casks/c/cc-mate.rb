cask "cc-mate" do
  version "0.3.4"
  sha256 "aa4472709c66d8521ed179c8c569baae07704e14e4559155b134e32b450d16fe"

  url "https://github.com/djyde/ccmate-release/releases/download/app-v#{version}/CC.Mate_#{version}_universal.dmg"
  name "CC Mate"
  desc "Application for managing Claude Code configuration files"
  homepage "https://github.com/djyde/ccmate-release"

  livecheck do
    url "https://github.com/djyde/ccmate-release/releases.atom"
    regex(/^app[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :atom
  end

  app "CC Mate.app"
end