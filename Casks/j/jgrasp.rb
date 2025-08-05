cask "jgrasp" do
  version "2.0.6_17"
  sha256 "4f27ad84a8fcf1821d524eaa345a03b3775f15d196719c4cdedf1c3041c6aacb"

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

  zap trash: [
    "~/Library/Application Support/jGRASP",
    "~/Library/Caches/org.jgrasp.jGRASP",
    "~/Library/Preferences/org.jgrasp.jGRASP.plist",
    "~/Library/Saved Application State/org.jgrasp.jGRASP.savedState",
  ]

  caveats do
    depends_on_java "11+"
  end
end
