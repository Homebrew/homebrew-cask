cask "jgrasp" do
  version "2.0.6_16"
  sha256 "4c1d70cea5cae2384886e159123f68cffb43bb01273958c57ff3fcad34479618"

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name "jgrasp"
  desc "IDE with visualisations for improving software comprehensibility"
  homepage "https://jgrasp.org/"

  livecheck do
    url "https://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html"
    regex(/jGRASP\s*(\d+(?:\.\d+)*_\d+)\s(?!Beta)/i)
  end

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: "jgrasp"

  caveats do
    depends_on_java "11+"
  end
end
