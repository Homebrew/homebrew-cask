cask "jgrasp" do
  version "2.0.6_12"
  sha256 "f3387c0098e49101afc842a79496661c5ac9f7aab2a946e9277cb785843de5ef"

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name "jgrasp"
  desc "IDE with visualizations for improving software comprehensibility"
  homepage "https://jgrasp.org/"

  livecheck do
    url "https://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html"
    regex(/jGRASP\s*(\d+(?:\.\d+)*_\d+)\s(?!Beta)/i)
  end

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: "jgrasp"

  caveats do
    depends_on_java "6+"
  end
end
