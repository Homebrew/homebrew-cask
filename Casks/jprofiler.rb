cask "jprofiler" do
  version "13.0.7"
  sha256 "764ee2aea93e495e2b80a01fdd005b1ab5af98280135eebeef29637897bb4856"

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
