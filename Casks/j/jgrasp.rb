cask "jgrasp" do
  version "2.0.6_14"
  sha256 "8cea27930d48f8988b0675fdbd801f5f5b2d0f24448109efeb120d17d695bc95"

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
