cask "jgrasp" do
  version "2.1.0_01"
  sha256 "4178d6a987521cb6b177caed1dcd8538f0c15bfbc8ec79c63ff9e1a20d5ffe93"

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name "jgrasp"
  desc "IDE with visualisations for improving software comprehensibility"
  homepage "https://jgrasp.org/"

  livecheck do
    url "https://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html"
    regex(/jGRASP\s*(\d+(?:\.\d+)*_\d+)\s(?!Beta)/i)
  end

  depends_on :macos

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
