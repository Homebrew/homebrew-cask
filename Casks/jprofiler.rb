cask "jprofiler" do
  version "12.0.2"
  sha256 "7f24428e32a62b9d247a23feaac1671278e7fb9d97dfd5bf21bd1984cc4d2911"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler/"
    strategy :page_match
    regex(/JProfiler\s*Release\s*(\d+(?:\.\d+)*)/i)
  end

  app "JProfiler.app"
end
