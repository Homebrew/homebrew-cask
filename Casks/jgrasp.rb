cask "jgrasp" do
  version "2.0.6_06"
  sha256 "f628cdabb5ad237d66a55110c3e45ce7494d47c58e21b20824bb219236da489e"

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  appcast "https://jgrasp.org/"
  name "jgrasp"
  homepage "https://jgrasp.org/"

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: "jgrasp"

  caveats do
    depends_on_java "6+"
  end
end
