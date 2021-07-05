cask "jprofiler" do
  version "12.0.3"
  sha256 "388ec46461302fae0d1cacf4cf5374d07954fd4310b1caf7c5e7da27a99c81e0"

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
