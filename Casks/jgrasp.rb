cask "jgrasp" do
  version "2.0.6,07"
  sha256 "0ffec1427ec0587f29f1d7765382be42c1732c4da99b9b46504adc260884f124"

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.before_comma.no_dots}_#{version.after_comma}.pkg"
  name "jgrasp"
  homepage "https://jgrasp.org/"

  livecheck do
    url "https://spider.eng.auburn.edu/user-cgi/grasp/grasp.pl?;dl=download_jgrasp.html"
    strategy :page_match
    regex()
      match = page.match(%r{/jgrasp(\d+)(\d+)(\d+)_(\d+)\.pkg}i)
      "#{match[1]}.#{match[2]}.#{match[3]},#{match[4]}"
    end
  end

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: "jgrasp"

  caveats do
    depends_on_java "6+"
  end
end
