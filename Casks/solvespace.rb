cask "solvespace" do
  version "3.1"
  sha256 "9d546e09ca2c9611dc38260248f35bd217b3e34857108b93e1086708583619a2"

  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg",
      verified: "github.com/"
  name "SolveSpace"
  desc "Parametric 2d/3d CAD"
  homepage "https://solvespace.com/index.pl/"

  app "SolveSpace.app"
end
