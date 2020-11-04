cask "electric" do
  version "9.07"
  sha256 "3e383f673183265700e0c13a5f7b1d3348247465c3d8817c845d62e4c92d86ce"

  url "https://ftp.gnu.org/pub/gnu/electric/electricBinary-9.07.jar"
  name "Electric VLSI Design System"
  desc "Sophisticated electrical CAD system for the design of integrated circuits"
  homepage "https://www.gnu.org/software/electric/electric.html"

  container type: :naked

  app "electricBinary-9.07.jar"

  caveats do
    depends_on_java "6+"
  end
end
