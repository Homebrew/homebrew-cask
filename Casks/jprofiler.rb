cask "jprofiler" do
  version "13.0.5"
  sha256 "e19f40a118f3848d1e86f3f9184a2952915c119017b9730b2c6aed5d4f6c4c9e"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/products/jprofiler/overview.html"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler/"
    regex(/JProfiler\s*Release\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "JProfiler.app"
end
