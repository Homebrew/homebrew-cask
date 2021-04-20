cask "solvespace" do
  version "3.0"
  sha256 "903252c6844ede39b2c633ef23e5a304bec68cbc90dda229ba2b53434f2045a1"

  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg",
      verified: "github.com/"
  name "SolveSpace"
  homepage "https://solvespace.com/index.pl/"

  app "solvespace.app"
end
