cask "jgrasp" do
  version "2.0.6_15"
  sha256 "9190309affdefffee3ebc9293c726ad86e6a5ab6e12d3e6c000c4caaa540cea7"

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
