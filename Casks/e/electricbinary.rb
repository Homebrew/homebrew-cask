cask "electricbinary" do
  version "9.07"
  sha256 "3e383f673183265700e0c13a5f7b1d3348247465c3d8817c845d62e4c92d86ce"

  url "https://ftp.gnu.org/gnu/electric/electricBinary-#{version}.jar"
  name "Electric VLSI Design System"
  desc "Electrical CAD system for the design of integrated circuits"
  homepage "https://www.gnu.org/software/electric/electric.html"

  livecheck do
    url :url
    regex(/href=.*?electricBinary[._-]v?(\d+(?:\.\d+)+)\.jar/i)
  end

  container type: :naked

  artifact "electricBinary-#{version}.jar", target: "/Applications/electricBinary-#{version}.jar"

  caveats do
    depends_on_java
  end
end
