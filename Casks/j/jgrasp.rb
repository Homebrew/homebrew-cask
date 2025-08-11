cask "jgrasp" do
  version "2.0.6_18"
  sha256 "d4614dce06d984e83b447a3cb8dd32f56e13f81e755fcc63b6951f17c35a81d7"

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
