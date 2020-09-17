cask "jgrasp" do
  version "2.0.6_05"
  sha256 "515ac81d1ef2f7afc5e028fbfe0deeb0b6220651881e2104a1ff6ef00df49c70"

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
