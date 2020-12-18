cask "jgrasp" do
  version "2.0.6_07"
  sha256 "0ffec1427ec0587f29f1d7765382be42c1732c4da99b9b46504adc260884f124"

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
